// ---------- 4/4/2023 --------------

Person p1 = new Person(); 

p1.name     = 'Hyder'; 
p1.age      = 38 ;
p1.height   = 178.5 ; // cm 

//System.debug('p1 value is : ' + p1);

p1.printName();  //printing the person name Hyder
p1.printAge(); //age of the person is : 38
p1.describePerson(); 
// Hyder is 38 and Height is 178.5

p1.changeName('Hyder 2.0');
p1.printName(); //printing the person name Hyder 2.0
p1.setAgeAndHeight(21, 180); 
p1.describePerson(); 
//Hyder 2.0 is 21 and height is 180
p1.setPersonInfo('Hyder 3.0', 18, 190);
p1.describePerson();
//Hyder 3.0 is 18 and height is 190

System.debug('------------------');


Person p2 = new Person();

p2.name='Marina';
p2.age = 21;
p2.height= 175.5;

//System.debug('p2 value is : ' + p2);
p2.printName(); //printing the person name Marina
p2.printAge(); //age of the person is : 21
p2.describePerson(); 
// Marina is 21 and Height is 175.5
p2.changeName('AI Marina');
p2.printName(); 
p2.setAgeAndHeight(18, 156);
p2.describePerson() ;  
// AI Marina is 18 and height is 156
p2.setPersonInfo('AI Marina v2', 16, 170);
p2.describePerson();
//AI Marina v2 is 16 and height is 170


System.debug('------------------');


// Set new parameters P3 = new Person
Person p3 = new Person();

p3.setPersonInfo('Sergey', 21, 6.2);
p3.describePerson();
p3.changeName('AI Sergey');
p3.printName();
p3.setAgeAndHeight(18, 6.3);
p3.printAge();


System.debug('------------------');

String uppercaseName = p3.getAllCapName();
System.debug('uppercaseName value is ' + uppercaseName);
System.debug('p3.getAllCapName() value is ' + p3.getAllCapName());


System.debug('------------------');

Boolean isAdult = p3.isEligibleForVote();
System.debug('isAdult value is :' + isAdult);


System.debug('------------------');


p3.setAgeAndHeight(16, 180);

System.debug('p3.isEligibleForVote() value is ' + p3.isEligibleForVote() );
//p3.isEligibleForVote() value is false

System.debug('------------------');


System.debug('p3.getAgeGroup value is: ' + p3.getAgeGroup());
//p3.getAgeGroup value is: teenager


System.debug('------------------');

Boolean isHigher = p3.isHigherThan(170);    // true
System.debug('is Sergey higher than 170 : '+ isHigher);
//  is Sergey higher than 170 : true


System.debug('p3.isHigherThan : ' + p3.isHigherThan(190));


