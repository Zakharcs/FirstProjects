
// ------------- 3/28/2023 ----------------

// 1. Disable existing BookTrigger 
// 2. Create A Trigger called BookOwnerTrigger 
// This trigger listen for two events before insert, before update

trigger BookOwnerTrigger on Book__c(before insert, before update) {
  System.debug('Trigger is running for Event : ' + Trigger.operationType);

  // This trigger has below logic
  // Whenever book is created or updated

  for (Book__c each : Trigger.new) {
    // if the Contact look up field is not empty
    if (each.Contact__c != null) {
      // assign the owner of this Book to the same Owner of Contact Record
      System.debug('Contact is not null ');
      System.debug(each.Contact__r.OwnerId);
    }
  }

}






