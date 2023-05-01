

trigger ContactTrigger on Contact (
  before insert,
  after insert,
  before update,
  after update,
  before delete,
  after delete,
  after undelete
) {


    System.debug('Trigger.operationType value is : ' + Trigger.operationType); 


// Task 1 : 
// - add all 7 events 
// - write if statement to run code conditionally if it was before_insert
    if( Trigger.isBefore && Trigger.isInsert ){
        System.debug('Running awesome before insert logic here'); 
    }

// - write if statement to run code conditionally if it was before_insert



//When the contact is created, if the Level__c field value is Primary
//Create 3 books under this contact
//with Book Name: Book (1, 2, 3) + lastName 

//insert these books



// - write if statement to run code conditionally if it was after_insert
    if( Trigger.isAfter && Trigger.isInsert){
        System.debug('Running awesome after insert logic here'); 

        List<Book__c> bookList = new List<Book__c>();

        for( Contact each : Trigger.new ){
            // if the level__c field value is Primary
            if(each.Level__c == 'Primary'){
            // create 3 book under this contact
            bookList.add(new Book__c ( Name = 'Book1' + each.LastName , Contact__c = each.Id ));
            bookList.add(new Book__c ( Name = 'Book2' + each.LastName , Contact__c = each.Id ));
            bookList.add(new Book__c ( Name = 'Book3' + each.LastName , Contact__c = each.Id ));
            }

        }
        insert bookList ; 

    }







// - write if statement to run code conditionally if it was before_update
    if(Trigger.isBefore && Trigger.isUpdate){
        System.debug('Running awesome before update logic here'); 
    }
// - write if statement to run code conditionally if it was after_update
    if(Trigger.isAfter && Trigger.isUpdate){
        System.debug('Running awesome after update logic here'); 
    }
// Insert and update some records and make these event happen.
}