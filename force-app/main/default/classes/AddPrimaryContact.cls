
// ------------------ 5/5/2023 ------------------------------


/**
 * Create a Queueable Apex class that inserts Contacts for Accounts.
Create a Queueable Apex class that inserts the same Contact for each Account for a specific state.
Create an Apex class:
Name: AddPrimaryContact
Interface: Queueable
Create a constructor for the class that accepts as its first argument a Contact sObject and a second argument as a string for the State abbreviation
The execute method must query for a maximum of 200 Accounts with the BillingState specified by the State abbreviation passed into the constructor and insert the Contact sObject record associated to each Account. Look at the sObject clone() method.
Create an Apex test class:
Name: AddPrimaryContactTest
In the test class, insert 50 Account records for BillingState NY and 50 Account records for BillingState CA
Create an instance of the AddPrimaryContact class, enqueue the job, and assert that a Contact record was inserted for each of the 50 Accounts with the BillingState of CA
The unit tests must cover all lines of code included in the AddPrimaryContact class, resulting in 100% code coverage
Before verifying this challenge, run your test class at least once using the Developer Console Run All feature
 * 
 */

/**
 * 
 * Create a Queueable Apex class that 
 * inserts the same Contact for each Account for a specific state.
 * 
 * Contact c = new Contact(LastName='Jon SNOW'); 
 * AddPrimaryContact q = new AddPrimaryContact(c, 'CA');
 * System.enqueJob(q) ; 
 * 
 */

 public with sharing class AddPrimaryContact implements Queueable{

    String state ; 
    Contact con ; 

    public AddPrimaryContact(Contact con,String state){
        this.con = con ; 
        this.state = state ; 
    }

    public void execute(QueueableContext context){

        // get all the Accounts belong to given state 
        List<Account> accLst = [SELECT Id,BillingState FROM Account
                                WHERE BillingState = :state];

        // add the given contact object to all these Accounts
        List<Contact> toBeInsertedCons = new List<Contact>(); 

        // go through all the accounts in above Account list 
        // and add the account Id to the cloned contact and add it to the list 
        for(Account each : accLst) {
            // clone the contact to get a copy of the provided contact to add
            // and ensure it does not have ID since we are inserting it 
            Contact clonedCon = this.con.clone(); 
            clonedCon.AccountId = each.Id ; 
            toBeInsertedCons.add(clonedCon) ; 

        }
        // Perform DML to insert all contacts 
        if (!toBeInsertedCons.isEmpty()) {
            insert toBeInsertedCons ;     
        }
        

    }

}





