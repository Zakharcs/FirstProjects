
// ------------------- 5/5/2023 -----------------------------------

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
 */

@isTest
public class AddPrimaryContactTest {

    @isTest
    private static void testQueuealeClass(){
        
        System.debug('Load Test DATA');
        
        List<Account> accounts = new List<Account>(); 
        for(Integer i=0;i<50;i++){
            
           Account acc = new Account(Name = 'Test Account '+ i); 
            // adding 25 CA 25 NY for diversifying the data
            if(i<25){
                acc.BillingState = 'NY'; 
            }else{
                acc.BillingState = 'CA'; 
            }
            accounts.add(acc); 
         }
        insert accounts ; 
        System.debug('account size ' + accounts.size());
        
        Contact contact = new Contact(FirstName='Jon', LastName = 'Snow'); 
        
        Test.startTest(); 
        System.enqueueJob( new AddPrimaryContact(contact,'CA'));
        Test.stopTest(); 
        
        //check result
        List<Contact> contacts = 
            [SELECT Id from Contact WHERE Contact.Account.BillingState='CA']; 
         System.debug('contacts size ' + contacts);
        
        Assert.areEqual(25, contacts.size()) ; 
        
        
        
    }
}
