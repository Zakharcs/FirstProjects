
/**
1. Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
(try out the same with while loop and do while loop as practice)
 */

Integer sumOfOdd = 0 ;

for(Integer i = 1; i<=100 ; i+=2){
  //System.debug(i) ;
  sumOfOdd += i ;

}
System.debug(' Sum of Odd from 1 to 100 ' + sumOfOdd) ;


// WHILE LOOP VERSION of same Task ---------------------------

Integer sumOfOdd1 = 0 ;

Integer i = 1 ; 

while( i<=100 ){
  sumOfOdd += i ;
  //System.debug(i);
  i += 20 ; // increment by 2 to get out of the loop, this peace of code gives us odd num

}
System.debug(' Sum of odd1 : '+ sumOfOdd1) ;





/**
2. Write a program that store the even numbers from 1 to 20 into List of Integer
 */

 List<Integer> evenNumbers = new List<Integer>();
 for(Integer even = 2; even <= 20; even += 2){
    evenNumbers.add(even);
 }
 System.debug(evenNumbers);



Integer sumOfList = 0;
for(Integer eachEven : evenNumbers){
    sumOfList += eachEven;
}
System.debug(' Sum of even numbers:' + sumOfList);



/**
 3. Write a program that store 10 random Decimal numbers in List of Decimal
   print out the size of the list 
   print out the sum of all numbers
   print out the average of all numbers 
   now try to go back to the code where you added elements , add more items into the list and run your program again to see if it works. 
  */

List<Decimal> priceList = new List<Decimal>{1.29,2.34,5.78,56.78,45.67,89.2,3.34,2.34,6.78,1.77};
//print out the size of the list 
Integer priceCount = priceList.size() ;
System.debug('Price count in the list is '+ priceCount) ;

//print out the sum of all numbers
//declare a variable to store 
Decimal sum = 0 ;
// iterate over the list using FOR each loop
for( Decimal eachPrice : priceList ){
  // get the sum
  sum += eachPrice;

}
System.debug('Sum of all prices: ' + sum) ;

// print out the average of all numbers
// average = sum / count of items
Decimal average = sum / priceCount ;
System.debug(' The average price is :' + average) ;



/**
  4. Write a program that store 10 Long(data type) values into List of Long 
   (it should be combination of positive and negative numbers) 

   print out the sum of positive numbers 
   print out the count of positive numbers 
   print out the count of negative numbers 
*/
//    print out the count of positive numbers 
//    print out the count of negative numbers 







/**
5. Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
 */

List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};
Set<String> noDuplicateNames = new Set<String>();
//System.debug(noDuplicateNames.size());
System.debug(names.size());

for(String eachName : names){
  System.debug(eachName);
  noDuplicateNames.add(eachName);// itirating each element no duplicates

}

System.debug(noDuplicateNames);

System.debug(noDuplicateNames.size());  // shows elements in the set






 /**
 6. Write a program that can create X sample List name according to given number as below 
  1. create a variable called leadCount as Integer and initialize to 4
  2. create a empty List of String 
  3. use for loop to add items to List to generate as below 
    
    Sample Lead 1
    Sample Lead 2
    Sample Lead 3
    Sample Lead 4
    

  4. print out the List variable and the size 
  5. try changing the leadCount and run your code again 
 
  */




  /**
  7. Similar to above task 
  1. now create two String variables to store firstName and lastName
  2. create a variable called leadCount as Integer and initialize to 5
  2. Create an empty List of String 
  3. using loop generate sample lead email in below format and add it to the list
  
  firstNameValue+lastNameValue_1@force.com
  firstNameValue+lastNameValue_2@force.com
  firstNameValue+lastNameValue_3@force.com
  firstNameValue+lastNameValue_4@force.com
  firstNameValue+lastNameValue_5@force.com
  
  4. try changing the leadCount and run your code again 
   */



/**
8. Create a program that take some item from One List to Another according to the condition 
  1. Create List of Integer with 9 elements|items 
  2. Create another empty List of Integer 
  3. Iterate over the first List using for each loop 
    - check if the number is between 5-10 
      - if so add this number to second list using secondList.add(itemHere) ; 

  4. Print out the first List 
  5. Print out the second List and it's size
*/




/**
9. Write a program that takes a list of strings that represent the names of account owners, and counts the number of times jon snow appears in the list.
 */


 List<String> accountOwners = new List<String>{'John White', 
                                               'Andy Young', 
                                               'Jon Snow', 
                                               'Avi Green', 
                                               'Jane Gray',
                                               'Jon Snow',
                                               'Josh Davis'};

//Declare variable with accountName
Integer countName = 0;

for(String eachAccountOwner : accountOwners){

  if(eachAccountOwner == 'John Snow'){  // curley braces for code block
      
      countName += 1;
  }

}  
System.debug(countName);                                          






/**
10. Write a program that takes a list of integers that represent the amounts of money spent by a set of users, and calculates the number of users who spent more than a certain amount (like 10000) of money.
in another word, create a list of Integer and get the count of numbers that over 10000 


 */







