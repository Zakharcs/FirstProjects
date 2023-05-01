//  ---------------2/9/2023-----------------

//  -----------------COLLECTIONS --------------------
/**
   Collections : for storing more than one value:
 */
//  ------------- 3 Type of Collections -------------------
// # 1) LIST: you create string of list's  in coding Index is always start from 0
//    example  groceries [0];  0. Tea, 1. Sugar, 2. Honey, 3. Milk
//    also use Arrays:   String[] groceries = new String[4];
//    Sceleton we use diamond operator :   List<String> groceries = new List<String>() ;
// # 2) SET :
// # 3) MAP :

// Syntax for Creating a list variable    STRING ------> LIST
// and initializing it's value starting LIST
// List<DataType> nameOfYourVariable = new List<DataType>();


List<String> studentName = new List<String>();

  studentName.add('Sergey');
  studentName.add('Yelena');
  studentName.add('Angela');
  studentName.add('David');
  studentName.add('Kristina');

  System.debug(studentName);



/**
Create a LIST of Integers with name scores and add 5 numbers in it
 */
// we declared and initialized it's value
List<Integer> scores = new List<Integer>();
scores.add(100);
scores.add(200);
scores.add(300);
scores.add(400);
scores.add(500);
System.debug(scores);



//-------------------------------------------
/**
Declare a list of Decimal variablee called prices
and initialize it's value.
.ADD() 4 item | element's in it and print out 
 */
List<Decimal> prices = new List<Decimal>();

prices.add(333.99);
prices.add(444.99);
prices.add(555.99);
prices.add(777.77);

System.debug(prices);



//-------------- LIST PRACTICE CONTINUED --------------------------------

/**
Declare aList Variable initialize it's value
and add all the items in one shot

List<Decimal> prices = new List<Decimal>('item1', 'item2', 'item2''......');
 */

 List<String> grocieries = new List<String>{'Milk', 'Bread', 'Egg', 'Coffe'};
 System.debug(grocieries);



// create List of Integer and add 5 values in one shot

List<Integer> numList = new List<Integer>{1,5,6,8,4}; 
System.debug(numList);


// create List of Decimal and add 5 values in one shot 


List<Decimal> salesPrice = new List<Decimal>{1.99 , 2.99, 5.88 , 100.99 , 0.99} ; 
System.debug(salesPrice); 



// create List of Id and  and add 5 values in one shot 

List<Id> accountIds = new List<Id>{ '0018W0000251OK6QAM', 
                                    '0018W0000251OK6QAT', 
                                    '0018W0000251OK6QAY', 
                                    '0018W0000251OK6QAZ', 
                                    '0018W0000251OK6QAA'
                                    }; 
System.debug(accountIds) ; 


// Create a List of Boolean add 5 items into it:

List<Boolean> Answers = new List<Boolean>{ true, false, false, true};
System.debug(Answers);


/**
Declare a List of Integer variable and intialize it's Value (empty)
Fill up the list with 100 irems, starting with 1 -----> 100
 */



List<Integer> numberList = new List<Integer>();
// numberList.add(1);
// numberList.add(2);
// numberList.add(3);
// numberList.add(4);
// numberList.add(5);

// or we can do this way
for(Integer count=1 ; count<=100 ; count++){
  numberList.add(count);

}
System.debug(numberList);




List<String> roles =new List<String>{'Developer', 'QA', 'SF Developer', 'PO','Scrum Master'} ;
System.debug( 'Agile : '+roles.size() );

for( String each : roles ){
System.debug(each);
}




/**  
        ------ 4 Types of Loop ----------
 WHILE LOOP ; DO WHILE LOOP ; FOR LOOP, FOR EACH LOOP
 Designed for Collection

*/

//    -----------WHILE LOOP------------

Integer starCount = 0;

while( starCount <=5){
    System.debug (starCount + ': Star Ranger ');
    starCount ++;
    
    
}


System.debug('---------------------------');

//   ------------- DO WHILE LOOP -----------

do {
    System.debug(starCount + 'Star Ranger');
    starCount ++;
}while(starCount <=5);

//----------------------------------------
System.debug('---------------------------');
//-------------  FOR LOOP --------------------


// counting 1 - 10 using for loop

for(Integer count = 1 ; count < 11 ; count ++){
    System.debug(count);
}


System.debug('---------------------------');

// Itteration = it's how many times you enter the loop.
// It run after each Itteration it enters



//  ------------- HOMEWORK TASK ----------------

/**
 Create two Integer as startingNumber and endingNumber
initialize their value (startingNumber should be less than endingNumber in this case).
use for loop to count up by one starting from startingNumber and end at endingNumber
 */

 Integer startingNumber = 5;
 Integer endingNumber = 15;
 for(Integer market = startingNumber ; market<=endingNumber ; market++ ){
    System.debug(market);

 }

 /**
  Create an Integer variable with name upperLimit to control where to stop and initialize it's value to 50. 
Create a for loop to count from 1 to the upperLimit , try different upperLimit and run again
  */
  System.debug('---------------------------');


  Integer upperLimit = 15;

  for(Integer count=5 ; count<=upperLimit ; count++){
    System.debug(count);

  }



/**
Use for loop to count from 20 to 60 increasing by 2 each time. 
Print out  20, 22, 24.....40 yay we finished half 42 44 46....60
 (Print out 'Yay we have finished half' when the count is exactly 40 as above)
 */
System.debug('---------------------------');
//--------------------------------------------------------

for( Integer count=20 ; count<=60 ; count+=2 ){
    System.debug(count);
    if(count==40){
        System.debug('Yay we have finished half');

    }

}


