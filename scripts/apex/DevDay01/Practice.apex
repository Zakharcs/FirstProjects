// This is how we can comment 
// let's get started 

/*
 This is how we can write 
  multiline comment
*/

/* 
In Apex we wrap up text, also known as String 
inside single quote
*/

System.debug('Hello World');

// APEX is Case Insensitive Language:
system.debug('Hello New World');

// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text

System.debug('Let\'s Learn Variable');    // Back Slash 


String firstName = 'Yelena';
System.debug('Yelena');

// Creating and using a Variable
// DataType variableName = someValueHere

String name = 'Sergey SF Developer';
// print the value of the variable in the log
System.debug('Sergey SF Developer');

//Concatenation is the combining
//One or More String Together

// print my name is : theValueOfNameVariable
System.debug('My Name is :'+ name);


// Give new value for variable name we created earlier
name = 'Sergey Zakharchenko';
System.debug('My new name is '+ name);


//Number Variables DataType that can store Number

Integer score = 66 ;
// print passing score is theValueOfTheScoreVariable

System.debug('Passing Score Is '  + score);

//score = 86 ;

System.debug( 'The result is ' +  score + 20  );  //result 6620
System.debug( 'The result is ' +  (score + 20)   ); // result 66-20 = 86

// LONG    stores longer number
Long distanceToMars = 12500000000L;
System.debug('Distance to Mars Long Value' + distanceToMars);


// DECIMAL
//Variable DataType Decimal that can store fraction Number
Decimal pi = 3.14;
System.debug( 'The Value of pi :'  + pi );


// DOUBLE
Double price = 199.99D ;   // D at the end is Double Value
System.debug ('The price value is '+ price); 



//Variable DataType Decimal that can store True or False

Boolean passed = true ; 
System.debug('Value of passed boolean variable ' + passed);

//Change Value to False and print it out
passed = false ;
System.debug('Value of passed boolean variable ' + passed);


/*
Apex is case insensitive but it's good to build good habbit of 
following good coding convention 

1. Always try to keep your data type first letter uppercase the rest
2.Always start your variable with lowercase score
   -- If you have more than one word ,
    -- use camelCase ==> myScore theGoodStuff 


// variable Data type that can store Salesforce Record Id
// It's almost like specialized String variable 
// that only store string with valid record Id format
// if anything else is stored, it will throw an error

ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);


// Quick explanation on some Technical Jargons
// Declaring variable 
Integer age  ; 

// Assigning the value of the variable
age = 20 ; 

// Declaring variable and initilizing it's value 
Integer amount = 100 ; 

// re-assigning value 
amount = 200 ; 

//   NULL 
// Null as a value, null means there is nothing
// if a variable is not assigned to any value 
// it will get a null value

Integer count = null;    // here we are explicitly assigning to  null
System.debug ('The count of value is '+ count);

// Re-ASSIGN 
// re assign the value count variable to the value of amount varuable
count = amount ;
System.debug('The count of value is '+ count);


// re-assign the value of count variable
// to the value of amount variable + 1000
count = amount + 1000 ; //1200
System.debug('New Value of count is ' + count );


/**OPERATORS  + - * /
Integer num1 = 200 ;
Integer num2 = 20 ;
Integer result ;
// Use these variable to print out below result
/*
The addition result between num1 and num2? is resultGoesHere
The subtruction result between num1 and num2? is resultGoesHere
The multiplication result between num1 and num2? is resultGoesHere
The division result between num1 and num2? is resultGoesHere
*/


Integer num1 = 200 ;
Integer num2 = 20 ;
Integer result ;
// ADDITION
result = num1 + num2 ;
System.debug(' The Addition result between ' + num1 + ' and ' + num2 + ' is ' + result );

// SUBTRACTION
result = num1 - num2 ;
System.debug(' The Subtraction result between ' + num1 + ' and ' + num2 + ' is ' + result );

// MULTIPLICATION
result = num1 * num2 ;
System.debug(' The Multiplication result between ' + num1 + ' and ' + num2 + ' is ' + result );

// DIVISION
result = num1 / num2 ;
System.debug(' The Division result between ' + num1 + ' and ' + num2 + ' is ' + result );














