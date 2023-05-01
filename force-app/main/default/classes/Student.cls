
// --------- 4/6/2023 ----------------
// --------------- CONSTRUCTOR --------------------
/**
 * Student class can be the parent | super class
 * for Online student claass
 * to provide baase field and functinallity
 * so we do not have to recriate those fields
 * and methods if we to use is as is in the 
 * child | sub Clases
 * In order for a class to be Parent | Super
 * It neew to be marked as VIRTUAL
 * 
 */




public virtual class Student {
    // firstName, lastName, studentId 
    public String  firstName; 
    public String  lastName; 
    public Integer studentId; 

    // Constructor :

    // a special block of code (similar to method)
    // get called automatically when object is being created
    // it has no return type (not even void)
    // it has same name as class name 
    public Student(){
        System.debug('Message from Student Constructor'); 
        this.firstName = 'unknown';
        this.lastName = 'unknown';
        this.studentId = 0 ; 
    }
    // Create another constructor 

    // that accept 3 parameters 
    // so we can allow providing the values 
    // and use those values to assign instance field values 

    public Student(String fName, String lName, Integer sId){

        this.firstName = fName ; 
        this.lastName = lName ; 
        this.studentId = sId ; 

    }

    public void study(){
        System.debug( this.firstName + ' Study ');   
    }
    // create a overloaded version of study method 
    // it has 1 integer parameter hour
    // and print  XX Study YY hours 
    public void study(Integer hour){
         System.debug( this.firstName + ' Study ' + hour + ' hours');   
    }


}



/**
 * A constructor is code that is invoked when an object is created from the class blueprint. 
 * You do not need to write a constructor for every class. 
 * If a class does not have a user-defined constructor, a default, no-argument, public constructor is used.
   If you write a constructor that takes arguments, 
   you can then use that constructor to create an object using those arguments.

   If you create a constructor that takes arguments, 
   and you still want to use a no-argument constructor, 
   you must create your own no-argument constructor in your code. 
   Once you create a constructor for a class, you no longer have access to the default, 
   no-argument public constructor
 */