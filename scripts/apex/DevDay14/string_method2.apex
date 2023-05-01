

//  LEARN DATATYPES and sObjectss


// method chaining 
// calling one method after another method 
// it's possible as long as the method you are calling 
// is the method available from the Data type of returned value 
String str = 'cookie';
//System.debug('str value is : ' + str); 

String result = str.toUpperCase().left(4).reverse() ;
//System.debug('result value is : ' + result); 



/**

## split(regExp)
Returns a list that contains each substring of the String that is terminated by either the regular expression regExp or the end of the String.

Returns a list that contains each substring of the String that is split by the given string , for example if you split sentence by space you get list of string containing each words 

*/
// how many word does this sentence have 
String message = 'VA Weather is beautiful Today';
// split this sentence by space so we can get list of string that contains words 
List<String> wordList =  message.split(' '); // space
// System.debug('wordList value is : ' + wordList); 
//wordList value is : (VA, Weather, is, beautiful, Today)

System.debug('how many word does this sentence have  : ' 
        + wordList.size()  ); 


for(String each : wordList) {
    System.debug('Current value : ' + each  
                  + ' : length is ' + each.length()  );
}


String name = 'Mario Cruz';
List<String> charList = name.split(''); // empty String
System.debug('charList value is : ' + charList);   
//charList value is : (M, a, r, i, o,  , C, r, u, z) 




// --------------------------------------------------------------------


/**
    sObject , Salesforce Object Type as Data type 
    is the type that represent Salesforce records
    Every object type you see under Object manager 
    of setting in your organization 

 */

 // Creating variable with Account sObject type 
 // and assign value 
 Account a1 = new Account(); 
 // this is how we can set field value 
 a1.Name = 'Cydeo'; 
 a1.AnnualRevenue = 1000000.85 ; 
 a1.BillingCity = 'Vienna' ; 
 a1.BillingState = 'VA'; 
// you can directly print it out and it will show nice format 
System.debug('a1 value is : ' + a1); 
//a1 value is : Account:{Name=Cydeo, AnnualRevenue=1000000.85, BillingCity=Vienna, BillingState=VA}

// How do we read the value of those field 
// print out Name and BillingState field value

System.debug('a1.Name value is : ' + a1.Name  );
System.debug('a1.BillingState value is : ' + a1.BillingState);  
// change the value of AnnualRevenue to 
 a1.AnnualRevenue = 1000000000.00 ; 
System.debug('a1.AnnualRevenue value is : ' + a1.AnnualRevenue); 


// here is the shortcut of creating Account instance with field value 

// create 3 Account with these name Apple, Google, Microsoft
Account a2 = new Account( Name = 'Apple' );
System.debug('a2 value is : ' + a2); 

// create google Account with Name and AnnualRevenue filled up
Account a3 = new Account(Name = 'Google' , AnnualRevenue=23423423423.0 ); 
System.debug('a3 value is : ' + a3); 

Account a4 = new Account(Name = 'eClick Enterprise' , AnnualRevenue = 122000000.77);
System.debug('a4 value is : ' + a4);  

//insert a1 ; 
//insert a2 ; 
//insert a3 ; 
//insert a4 ; 