/**
------------------ 2/21/23 -----------------

https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm

Math class is a class coming from Apex itself 
It has lot of pre-written code about math that we can just use directly 

Mod operator in math allow you to get the remainder of division 

10 / 3 = 3    1 remain 

*/

Integer num1 = 10;
Integer num2 = 3 ;


Integer result = num1 / num2 ;
System.debug('result value is: ' + result); // how to get remeinder?

// MATH.mod(num1 , num2 ); ==> generates remeinder
Integer remainder = Math.mod(num1, num2) ;
System.debug('remainder value is: ' + remainder);

/**
Odd or Even in Math
Odd number is a number that will have a remainder of 1 when devided by 2
Even number is a number that will have a remainder of 0 when devided by 2
 */

 
Integer score = 48 ;     // create a variable
 // store the result of cehcking the number is even or odd into Boolean
Boolean isEven = Math.mod(score, 2) == 0 ;
System.debug('isEven value is: ' + isEven);
 
 // Print add number if num3 is odd.
 // And print even number if it's even.

if( isEven = true ){
    System.debug('Even Number');

}else{
    System.debug(' Odd Number');

}

// what if we do not want to create a variable to store the result of even number

if( Math.mod(score, 2) ==0 ){
     System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}


// Math.max (number1 , number2 ); ==> returns the bigger number
System.debug('which number is bigger: ' + Math.max(11, 99) ); 


// Math.min (number1, number2 ); ==> returns the saller number
System.debug('which number is smaller: ' + Math.min(111, 99) ); 

// Math.random() ==> Returns a positive Double that is greater than or equal 0.00 and less than 1.0

Double randomDouble = Math.random() * 100 ; // or we can put it into a variable
System.debug('randomDouble value is: ' + randomDouble ); 
System.debug('Math.random ()  value is * 100 : ' + randomDouble * 100 ); // by multiply 



Integer randomInteger = randomDouble.intValue( ) ;
System.debug('randomInteger  value is : ' + randomInteger ); 

Double price = 15.5 ;
Integer priceWholeNumber = price.intValue();
System.debug('priceWholeNumber  value is : ' + priceWholeNumber ); 






