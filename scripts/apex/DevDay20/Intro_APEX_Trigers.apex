//             3/13/2023
// ---------- APEX TRIGERS ----------

// 7 types of triegers in apex
//before insert, after insert, before update, after update, before delete, after delete, after undelete

//   ---- ACCOUNT TRIGER -----------
trigger AccountTriger on Account (before insert, after insert,
                                  before update, after update,
                                  before delete, after delete,
                                  after undelete) {
		
      System.debug('Trigger event is : ' +  Trigger.operationType    );                               
      System.debug('Hello from Trigger');
    
    
}



// ------ CONTACT TRIGER --------------
trigger ContactTrigger on Contact (before insert, after insert,
                                   before update, after update, 
                                   before delete, after delete,
                                   after undelete) {
    

    // in order to find out what kind of event triggered this code
    // we can use Trigger context variable called operationType
    // Trigger.operationType
    
    System.debug('This code ran because of this event ' + Trigger.operationType);
    System.debug('Hello from Contact Trigger');
    
}


