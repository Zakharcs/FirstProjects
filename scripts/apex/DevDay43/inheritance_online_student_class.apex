
// ------------- 4/24/2023 --------------

//   OnlineStudent

//OnlineStudent o1 = new OnlineStudent() ; 
//o1.firstName = 'Esra' ;
//o1.lastName = 'B' ; 
//o1.studentId = 100 ; 
//o1.meetingId = 987654321 ; 
//System.debug('o1 value is : ' + o1) ;

//o1.study() ;

//   LocalStudent 

//LocalStudent l1 = new LocalStudent() ;
//l1.firstName = ' Ilaha' ;
//l1.lastName = ' H ' ;
//l1.studentId = 101 ;
//l1.seatId = 5 ;

//System.debug('o1 value is ::: ' + l1);
//l1.study() ;


//LocalStudent l2 = new LocalStudent();
//System.debug('l2 value is : ' + l2);



 OnlineStudent o2 = new OnlineStudent('Deaton','F',201, 900800700);
// System.debug('o2 value is : ' + o2);
 LocalStudent l2 = new LocalStudent(); 
// System.debug('l2 value is : ' + l2);

List<Student> studentLst = new List<Student>(); 
studentLst.add(o2); 
studentLst.add(l2) ; 

System.debug('studentLst value is : ' + studentLst);



/**
 * A constructor is code that is invoked when an object is created from the class blueprint. 
 * You do not need to write a constructor for every class. 
 * If a class does not have a user-defined constructor, a default, no-argument, public constructor is used.
   If you write a constructor that takes arguments, 
   you can then use that constructor to create an object using those arguments.

   If you create a constructor that takes arguments, 
   and you still want to use a no-argument constructor, 
   you must create your own no-argument constructor in your code. 
   Once you create a constructor for a class, you no longer have access to the default, no-argument public constructor
 */



/**
 * Considerations for the @IsTest(SeeAllData=true) Annotation
If a test class is defined with the @IsTest(SeeAllData=true) annotation, the annotation applies to all its test methods. The annotation applies if the test methods are defined with the @IsTest annotation or with the (deprecated) testMethod keyword.
The @IsTest(SeeAllData=true) annotation is used to open up data access when applied at the class or method level. However, if the containing class has been annotated with @IsTest(SeeAllData=true), annotating a method with @IsTest(SeeAllData=false) is ignored for that method. In this case, that method still has access to all the data in the organization. Annotating a method with @IsTest(SeeAllData=true) overrides, for that method, an @IsTest(SeeAllData=false) annotation on the class.
@IsTest(SeeAllData=true) and @IsTest(IsParallel=true) annotations cannot be used together on the same Apex method
 */




