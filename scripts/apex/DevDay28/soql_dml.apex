
// ----------- 3/27/2023 -----------

// Get all the books with no price set store it into the List
// Set all the price value to 999

List<Book__c> bookList = [SELECT Name, price__c FROM BOOK__c 
                           WHERE PRice__c = null];

//   for(Book__c each : bookList){
 //      each.Price__c = 999;

//    }

// use DML to update
    //update bookList;
// you can run this only once
// because once you update price to 999 the query will return empty list






// Alternative approach:
// when we updated list of records, we got from SOQL or Trigger
// it's always best to create new Empty list to store updated content
// and do DML operation on that List

//List<Book__c> updateList = new List<Book__c>();

//for(Book__c each : bookList){
//    each.Price__c = 999 ;
    // add the record with updated field value into the updatedList
 //   updateList.add(each);

// }
// perform DML operation on updateList

//update updateList;


//  we can delete existing record by SOQL query to get the records
// and delete DML oeration
// for example : Delete all the Account record with name 'Acc from Apex'

List<Account> toBeDeletedAccounts = [SELECT Id, Name FROM Account
                                     WHERE Name = 'Acc from Apex'];

System.debug('deleted accounts: ' + toBeDeletedAccounts.size() ); 

//delete toBeDeletedAccounts;




// result of [ SOQL QUERY ] is almost always List of sObject type
// if we do not need this List variable we can directly use it [SOQL]
// for example , print out all Book Name in your SF organization
// SELECT Name from Book__c

for(Book__c each : [SELECT Name from Book__c]    ) {
    
    System.debug('Book Name value : ' + each.Name  );

}
    

