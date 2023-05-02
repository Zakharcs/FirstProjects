
// --------------- 5/2/2023 ---------------------

// ============= AccountProcessor ====================
public class AccountProcessor {
    
    /**
*Create an Apex class:
Name: AccountProcessor
Method name: countContacts
The method must accept a List of Account IDs
The method must use the @future annotation
The method counts the number of Contact records associated 
to each Account ID passed to the method and updates the 'Number_Of_Contacts__c' field 
with this value
**/
    @future
    public static void countContacts(List<Id> accountIds){
        
        List<Account> toBeUpdatedAccounts = new  List<Account>(); 
        
        List<Account> myAccounts = [SELECT Id, (SELECT Id, Name from Contacts) 
                                    Number_Of_Contacts__c 
                                    FROM Account 
                                    WHERE Id IN :accountIds]; 
        for(Account each : myAccounts){
            //List<Contact> childContacts = each.Contacts ;
            //each.Number_Of_Contacts__c = childContacts.size(); 
            each.Number_Of_Contacts__c = each.Contacts.size(); 
            toBeUpdatedAccounts.add(each);
        }
        update toBeUpdatedAccounts ;   
    }
    
}



// =============== AccountProcessorTest ========================



@isTest

private class AccountProcessorTest {
    
    @isTest
    
    public static void testAccountNumOfContactsUpdate(){
        // Arrange
        List<Account> accLst = new List<Account>(); 
        accLst.add( new Account(Name = 'Test 1') ) ;
        accLst.add( new Account(Name = 'Test 2') ) ;
        accLst.add( new Account(Name = 'Test 3') ) ;
        insert accLst ; 
        
        List<Contact> contacts = new List<Contact>(); 
        
        List<Id> accountIds = new List<Id>(); 
        
        for(Integer i=1 ; i<accLst.size() ; i++ ){
            
            contacts.add(    new Contact(AccountId = accLst[i].Id , 
                                         LastName = 'Job '+i ) ) ; 
            // fillup accountid list 
            accountIds.add( accLst[i].Id ); 
        }
        insert contacts ; 
        
        
        // Act 
        Test.startTest(); 
        AccountProcessor.countContacts(accountIds); 
        Test.stopTest(); 
         
        // Assert 
        // expect all 3 accounts Number_Of_Contacts__c have value of 1 
        
        List<Account> updatedAccounts = [SELECT Id,Number_Of_Contacts__c
                                        FROM Account
                                        WHERE Number_Of_Contacts__c = 1];
        Assert.areEqual(3,updatedAccounts.size()) ; 
        
    }    
    
}
        // new Map<Id,Account>(accLst)  = > keySet 

