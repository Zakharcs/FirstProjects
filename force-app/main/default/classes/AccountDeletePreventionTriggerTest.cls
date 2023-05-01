
// ---------------------------- 4/18/2023 ------------------    
//  ------------- Calling UTILS ----------- DevDay41 ---------------

 //    startTest   &    stopTest



@isTest
public class AccountDeletePreventionTriggerTest {
    

    @isTest
    static void testDeleteAccountWithoutOpps(){
        
        // Arrange 
        // create 2 ccount with no opp 
        List<Account> accList = Utils.createAccountsWithOpps(2, 0) ; 

        // Act 
        // delete the accList and save the result for inspection 
        Test.startTest();
        Database.DeleteResult[] results = Database.delete(accList, false); 
        Test.stopTest() ; 

        // Assert 
        // check the account deletiong was successful for both record 
        Assert.isTrue(  results[0].isSuccess()   );
        Assert.isTrue(  results[1].isSuccess()   );

    }


    @isTest
    static void testDeleteAccountWithOpps(){
        
       // Arrange 
        // create 2 ccount with 3 opps
        List<Account> accList = Utils.createAccountsWithOpps(2, 3) ; 

        // Act 
        // delete the accList and save the result for inspection 
        Test.startTest();                                          // all or nothing option 
        Database.DeleteResult[] results = Database.delete(accList, false); 
        Test.stopTest() ; 

        // Assert  //CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!
        Assert.isFalse( results[0].isSuccess()  );
        Assert.isFalse( results[1].isSuccess()  );

        String expectedErrorMsg = 'CAN NOT DELETE ACCOUNT WITH CHILD OPPS!!!!' ; 
        // assert the error message match as expected 
        // in order to get the error message we use 
        // yourSingleResult.getErrors()[0].getMessage()
        Assert.areEqual(expectedErrorMsg, results[0].getErrors()[0].getMessage()    );
        Assert.areEqual(expectedErrorMsg, results[1].getErrors()[0].getMessage()    );
        

        


    }




}

/**
 * The 'Test.startTest( )' method does not refresh the context of the test: 
 * it adds a context to your test. For example, if your class makes 98 SOQL queries before it calls startTest, 
 * and the first significant statement after startTest is a DML statement, the program can now make an additional 100 queries. 
 * Once stopTest is called, however, the program goes back into the original context, 
 * and can only make 2 additional SOQL queries before reaching the limit of 100.

 * The 'Test.stopTest( )' method marks the point in your test code when your test ends. 
 * Use this method in conjunction with the startTest method. 
 * Each test method is allowed to call this method only once. 
 * Any code that executes after the stopTest method is assigned the original limits that were in effect before startTest was called. 
 * All asynchronous calls made after the startTest method are collected by the system. 
 * When stopTest is executed, all asynchronous processes are run synchronously.
 
 */