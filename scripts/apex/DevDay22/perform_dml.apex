

trigger BookTrigger on Book__c (before insert, after insert,
                                before update, after update,
                                before delete, after delete,
                                after undelete) {

   System.debug('Trigger is running for Event : ' + Trigger.operationType); 
                           
   // Trigger.new =>  List of Book__c records that entered the trigger
     // only available for event of insert, update , undelete 
   // Trigger.newMap =>  records that entered the trigger stored in Map<Id, Book__c> 
    // only available in after insert , before update ,   after update, after undelete                             
   System.debug('-----Trigger.new---List<Book__c>----------');
   System.debug(Trigger.new) ; 

   if(Trigger.isAfter && Trigger.isInsert){
                            
     System.debug('-----Trigger.newMap--Map<Id,Book__c>-----');
     System.debug(Trigger.newMap) ; 

     System.debug('-----All The Key of The Map--IDs of All records----');
     System.debug('Trigger.newMap.keySet()  value is : ' + Trigger.newMap.keySet() );
        
   }    
   


    

  // Requirement : When the new book is created or updated 
  // if the year is empty ==> set it to 1999
  // THIS NEED TO BE WRITTEN IN BEFORE_INSERT OR BEFORE_UPDATE
  if( Trigger.isBefore &&  (Trigger.isInsert ||Trigger.isUpdate )   ){

       // Start with trigger loop 
       for(Book__c each : Trigger.new) {
            
            if( each.Year__c == null  ){
                each.Year__c = 1999 ; 
            }

       }
         

  }



}



// Create a new Book instance with fields 
Book__c b = new Book__c(Name='Apex Book' );
// insert as Salesforce record
insert b ; 