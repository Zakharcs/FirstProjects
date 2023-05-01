
// ------------ 4/20/2023 ------------------------

/**
1. Create a new Apex trigger on the Case object, called CreateChildCaseTrigger.
2. Add a trigger handler class, called CreateChildCaseHandler, to implement the trigger logic.
3. In the trigger handler class, implement a handleAfterInsert trigger handler method, the method should 


1. have a parameter to accept List<Case> newCases as param (so you can pass Trigger.new)
2. The method will insert a new Child case with high Priority 
if the case Priority is High so every time a case with high priority created, it will create another case with high priority and set the ParentId to the case
    - This is how it looks like to create child case

 */
trigger CreateChildCaseTrigger on Case (after insert) {


if(Trigger.isAfter && Trigger.isInsert){
     CreateChildCaseHandler.handleAfterInsert(Trigger.new);

 }


}