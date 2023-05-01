
// ------------ 3/14/2023 -------------------

trigger AccountTrigger on Account (before insert, after insert, 
                                   before update, after update,
                                   before delete, after delete,
                                   after undelete) {
                                       
     System.debug('The Trigger event is : '  + Trigger.operationType );
     //System.debug('Hello From Trigger');
                                       
     // Requirement 1 :  When the record is created , 
     // if the AnnualRevenue is greater than 500000, update the rating to Hot 
     // BEFORE INSERT EVENT IS GOOD FOR THIS REQUIREMENT 
     
     // Check if the current run of trigger is because of Before Insert Event 
     if(Trigger.isBefore && Trigger.isInsert){
        System.debug('I am inside Before Insert Code : '); 
     }
      
     // Requirement 2 :  When the record is created , 
     // if the AnnualRevenue is greater than 1000000, 
     // Create a Sample Contact for this Account 
     // AFTER INSERT EVENT IS GOOD FOR THIS REQUIREMENT 
     if(Trigger.isAfter && Trigger.isInsert){
          System.debug('I am inside After Insert Code : ');                                  
     }

}

Account a1 = new Account(Name = 'Acc from Apex'); 
insert a1 ; 


