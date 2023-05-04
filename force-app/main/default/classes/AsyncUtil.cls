

//    ---------------------- 5/1/2023 -----------------
//    ---------------    Asynchronous Apex   ------- @future ---------

public class AsyncUtil {


     /**
     * Create a static void method called boilWater
     * simply print boiling water 
     * Add @future annotation on top of the method
     */

     /**
      @future will make a method as future method
      future method is always static void method
      it can have parameters, the type can not be sObject
      it can be any primitive types like String, Integer, Double, Id and so on 
      it can also be List of those types
    */
     
     @future

     public static void boilWater(){

        System.debug('boiling water ......');
     }

   
    @future
    public static void UpdateCurrentUserRoleToCFO(){


      



    }



}





/**
   Asynchronous Apex
   In a nutshell, asynchronous 
   Apex is used to run processes in a separate thread, at a later time.

   An asynchronous process is a process 
   or function that executes a task "in the background" 
   without the user having to wait for the task to finish.


   You’ll typically use Asynchronous Apex for callouts to external systems, 
   operations that require higher limits, and code that needs to run at a certain time. 
   The key benefits of asynchronous processing include:

   
 */