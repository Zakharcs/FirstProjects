
Integer num1 = 100 ;
System.debug('num1 value is : ' + num1); 

// Create variable num2 and assign the value to whatever 
//the value of num1 is

Integer num2 = num1 ;
System.debug('mun2 value is : ' + num2); 


num2 = 200 ; 
System.debug('num1 value is after num2 update : ' + num1);
System.debug('num2 value is after num2 update : ' + num2);  

// Create a new Case
Case c1 = new Case(Subject = 'New Case');
insert c1 ;
System.debug('c1 value is : ' + c1); 
//Create a variable c2 and assign the value to 
//whatever the value of c1
Case c2 = c1 ; 
System.debug('c2 value is : ' + c2); 

c2.Subject = ' The guy over the wall'; 

// print out c1 and c2 subject before inseting it
System.debug('c1.Subject value before update DML is : ' + c1.Subject); 
System.debug('c2.Subject value before update DML is : ' + c2.Subject); 

update c1 ;

// ------------ EXAMPLES --------------


//  Jafar is a Person 
//  we can refer him as TypeMaster 

// TypeMaster  =  new Jafar () ; 

//  we can also refer him as LD
// LD = TypeMaster


