
// ---------4/28/2023 ----------------------


Schedulable s = new ScheduledTaskCleanUp();
// crone expression is used to 
// define time inetervals programatically 
// It has 6 part 
// second minute hour dayOfMonth Month dayOfWeek
// anything you do not want to fill up 
// use ? mark 
// String crex = '0 1 12 29 4 ?' ; 
 String crex = '0 1 12 29 4  ?' ;

//System.schedule(jobName, cronExp, schedulable)
System.schedule('Task Job', crex, s) ;

