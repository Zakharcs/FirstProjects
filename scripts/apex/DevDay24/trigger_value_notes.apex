
//    -----------   NOTES -------------
// Here is the availability of data related context variables 


// Unlike flow multiple records can enter the Trigger at the same time.
/ /Since multiple records enter the trigger at the same time, you will always use Trigger loop
   for(yourSobjectType each : Trigger.new ){

   }

or
   for(yourSobjectType each : Trigger.old ){

   } 

// If you need to access old value and new value at the same time, here is the technique to use
   for(yourSobjectType each : Trigger.new ){

          // if you need to access old fields values you can do this
          yourSobjectType oldX = Trigger.oldMap.get(each.id); 
          // do your comparison or any logic here 
   } 

// If it was a before update on Account object to keep track of Account Name change for example in description field, this is how it will look like
trigger AccountTrigger on Account(before update){
    for(Account each : Trigger.new ){

    // if you need to access old fields values you can do this
        Account oldAcc = Trigger.oldMap.get(each.id); 
        // do your comparison or any logic here
        if(each.Name!= oldAcc.Name){
            each.Description = oldAcc.Name ; 
        } 
    } 
}