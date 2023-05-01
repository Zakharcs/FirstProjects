
// String, ID
// Integer Long, Double, Decimal
// Boolean: True or False
// Date, DateTime, Time



String s1 = 'Apex is Fun' ;
System.debug('String s1 value is: ' + s1);


// Integer  ------- numbers -----------
// Whole Numbers
Integer num1 = 10;
Long num2 = 2000000000; 
System.debug('num1 values is: ' + num1);
System.debug('num2 values is: ' + num2);


// Decimal -------- numbers -------------
Double num3 = 9.99;
Decimal num4 = 100.999243;   // stores fractiona numbers
System.debug('num3 value is: ' + num3);
System.debug('num4 value is: ' + num4);



// Boolean ----------- True or False -----------
Boolean isActive = true;
Boolean closed = false;
// All of the variables can be assigned to null
System.debug('isActive: ' + isActive );
System.debug('closed: ' +  closed);


// ID ---------- ID it's like a stirng for storing ID for salesforce record
ID accountId1 = '0018z00002eEKQuQAO';
ID leadId = '0018z00002eEDQuQAO';
System.debug('accountId1 is: ' + accountId1); // ID 15 or 18 digit 
System.debug('lead iD is: ' + leadId);




// ------------ CONDITIONAL STATEMENT IF ELSE if  --------------
// Branching your code

Integer score = 90;

if( score >= 70){
    System.debug('You have passed');
}else{
    System.debug('You have failed');
}


// EXAMPLE--------- IF ELSE STATEMENT -----------------
Integer score1 = 93;
// && (AND)  || (OR) logical aperators
if(score1 > 90  && score1 < 100){
    System.debug('A');

}else if (score1 > 80 && score1 <= 90){ 
    
    System.debug('B');                     //we put one more condition

}else if (score1 > 70 && score1 <= 80){

    System.debug('C');
    
}else{

    System.debug('You have failed: ');
}


// --------------- SWITCH STATEMENT ----------------


Integer season = 6 ;

switch on season{

    when 1 {
        System.debug('Spring');
    }

    when 2 {
        System.debug('Summer');
    }

    when 3 {
        System.debug('Fall');
    }

    when 4 {
        System.debug('Winter');
    }

    when else {
        System.debug('Not a swimming season');
    }
}



// --------------- WHILE LOOP -----------------
// Repeat the same peace of code multiple time until certine condition is met
// The While loop starts if a condition has been met. If the condition is True,
// it does something, if it's False, the loop stops.

// While ( put condition ){
     // run the block of code
//}

// Objective is print 1 - 10
Integer counter = 1;

while( counter <= 10){
    System.debug ('Counter value is: ' + counter);
    counter ++ ; // or counter = counter + 1 ;   increment value to get out of the loop
                 // other wise it will be infinate loop, never stops
}                // ++ Increment

// print 10 to 1
Integer yValue = 10;
while(yValue >= 1){
    System.debug('yValue is: ' + yValue);
    yValue-- ;   // or yValue = yValue - 1 ;
}                // -- Decrement




// --------------- DO WHILE LOOP  ------------------
//  DO WHILE LOOP enters into the loop a least one time, no matter what




// ---------------- FOR LOOP -----------------
// count form 1 - 10

// first is initialization, loop condition, increment or decrement condition
for(Integer i = 1 ; i <= 10 ; i ++ ){
    System.debug('i value is:' + i);

}

// count from 10 - 1
for(Integer x = 10 ; x >= 1 ; x --){
    System.debug('X value is: ' + x );

}



// --------------- COLLECTION in APEX 3 Types ---------------
//  LIST calss
//  SET  class
//  MAPS class

/**
COLLECTION LIST and ARRAY
Index starts form 0, 1, 2, 3, 4    = 5 itmes
List<String> groceries = new List<String>();
 */


// Declare list variable and initialize it's value
List<String> names = new List<String>();
// .add a method to add elements 
names.add('Sergey');
names.add('Yelena');
names.add('Angela');
names.add('David');
names.add('Kristina');
//  read the value at second index
// get()index => get(2)    = we use this command
System.debug('Element at index 2:' + names.get(2) ); // list using .get message
// or we can use array syntax
System.debug('Element at index 2:' + names[2] );   // using array [] message

// .add (index, value) this will insert at certine index
names.add(0, 'Mama');

// set (index, newValue) this will update the elemnt at that index postion
names.set(0, 'SERGEY');

// print everything out 
System.debug('Names' + names);




// -------------- COLLECTION LIST usig FOR LOOP -------------

//  LOOP throug the list or arry
// declare and intialize a list object with elements
List<Integer> nums = new List<Integer>{10, 20, 30, 40, 50 , 60};
System.debug('All List of value nums: ' + nums);

// get second index element in the list 
System.debug('Read Second item in the list is: ' + nums.get(1) );


//size() method returns th ecount of element in the list or arry
Integer elementCount = nums.size();
System.debug('Element Count in nums List is: ' + elementCount);


// ------------- FOR LOOP ----------
// Accessing elements in the list of integer 
for(Integer i = 0 ; i < elementCount ; i ++){
    System.debug('Index ' + i + ' Element: ' + nums.get (i) );

}




//-------------- COLLECTION , LIST , ARRAY  LOOPING --------------------
// declaring and initializing arry with size
Integer [] nums1 = new Integer[4];
nums1[0] = 100;   // array
nums1[1] = 200;
// calling add method to add more items 
nums1.add(300);   // list, intertengebly used
nums1.add(400);
System.debug('Nums is : ' + nums1);

System.debug('nums1.size():' + nums.size() );




// declaring and initializing arry with pre-defined elements
Integer[] scores = new Integer[] {99,88,66,55,44,33,22,11, 0};
System.debug('scores.size():' + scores.size() );
System.debug('scores' + scores);


//-----------------  FOR LOOP in the list -----------------------
for(Integer i = 0; i < scores.size(); i++){
    System.debug('Eleemnts:' + scores.get(i) );

}

// ---------------- COLLECTION FOR EACH LOOP -----------------
// for each loop: it works the same for LIST or ARRAY
for(Integer each : scores){
    System.debug('elements: ' + each);

}



// -----------------COLLECTION  of Unique Elements SET -----------------------
// declaring and intializing Set object
// removes duplicate sets
Set<Integer> uniqueNums = new Set<Integer>();
uniqueNums.add(10);
uniqueNums.add(10);
uniqueNums.add(20);
uniqueNums.add(20);
uniqueNums.add(30);
System.debug('unigueNums:' + uniqueNums);

// FOR LOOP dose not care how many elements you have 
for(Integer each : uniqueNums){
    System.debug('Elements here: ' + each);
}



Set<Integer> myNums = new Set<Integer>{10,3,3,3,3,5,5,7,8,10,11,11,11,11};
System.debug('myNums.size is ' + myNums.size() );
System.debug('myNums' + myNums);



//--------------- FOR EACH LOOP -------------
// to itterate over items 
Set<String> uniqueDuplicateNames = new Set<String>{'Adam','Jon', 'Jon', 'Jon','Adam'};
for(String each : uniqueDuplicateNames) {
    System.debug('Curent value for Names is: ' + each);
}





// ------------------Collection of Key Value Pair, Map Intro-------------

// A MAP is a collection of key-value pairs where each unique key maps to assign value.
// Keys and Values can be any data type-premitive types,
// collections, Objects, user-defined types, and built-in APEX types

// Declaring and intializing MAP Object
Map<String, String> currencyMap = new Map<String, String>();
// add item using .put
currencyMap.put('United States', 'Dollar');
currencyMap.put('Japan','Yen');
currencyMap.put('United Kingdom','Pound');
currencyMap.put('Russia','Rub');
// print out
System.debug('currencyMap:' + currencyMap);
// getting the size of the Map
System.debug('currencyMap:' + currencyMap.size());


// Get the value out of the Map
// get(key) = > value
System.debug('Value of the key United States is: ' + currencyMap.get('United States') );
// containsKey (key) => true if exists, false if no
Boolean isUKthere = currencyMap.containsKey('United Kingdom');
System.debug('Inited Kingdom Exist in this Map? :' + isUKthere );

// How to Remove Item
currencyMap.remove('United States');
System.debug('United States Exist in this Map? :' + currencyMap.containsKey('United States') );
// OUT PUT United States Exist in this Map? :false
// becuase we used .remove('United States');


// CLEAR EVERYTHING inside the Map
currencyMap.clear();
System.debug('currencyMap value is : ' + currencyMap.size()); 






// ---------------- Collection of Key Value Pair, Map Practice ---------------
// Create a Map object country name and score
Map<String, Integer> scoreMap = new Map<String,Integer>
{'US'=> 100, 'UK'=> 200, 'RUS'=> 300, 'FR'=> 400, 'CA'=> 500};

// or

//scoreMap.put ('US' 100);
//scoreMap.put ('UK' 200);
//scoreMap.put ('RUS' 300);
//scoreMap.put ('FR' 400);
//scoreMap.put ('CA' 500);
System.debug('scoreMap value is : ' + scoreMap); 

System.debug('scoreMap.get value of FR is : ' + scoreMap.get('FR') ); 
System.debug('If US in the Map: ' + scoreMap.containsKey('US') );

// REMOVE 
scoreMap.remove('US');
System.debug('If US in the Map after removing value is : ' + scoreMap.containsKey('US') ); 

    
scoreMap.put('UK', 97);
System.debug('Score Map Value right now:' + scoreMap );
scoreMap.clear();
System.debug('Size after celaring: ' + scoreMap.size() );



// ------------- Collection Of Key Value Pair -----------------------


// keySet() => all th ekey in Set<Key data type>
Set<String> allKeys = scoreMap.keySet();
System.debug('allKey value is : ' + allKeys); 


// values() => all the values in List<Value data type>();
List<Integer> allValues = scoreMap.values();
System.debug('All Values: ' + allValues);


// Looping through the map to find key and value
for(String eachKey : allKeys) {
    System.debug('Current value : ' + eachKey + 'value is ' + scoreMap.get(eachKey) );
}
    





































