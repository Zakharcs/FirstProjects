

/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2,item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */
// ARRAY that store for String
String[] groceries = new String [4];
groceries[0] = 'Bread' ;
groceries[1] = 'Egg' ;
groceries[2] = 'Beef' ;
groceries[3] = 'Banana' ;
// stores 4 items

groceries.add('Milk');   // we can add a new item this way
System.debug('Groceries value list: ' + groceries);


// using array syntax, print out the item at index 2
System.debug('Item at index 2 is : ' + groceries[2]); // []

// using List Syntax, print out hte item at index 2
System.debug('Item at index 2: ' + groceries.get(2) ); // ()


// Change the value at index 1 to 'Cream Cheese'
groceries[1] = 'Cream Cheese' ;
System.debug('Now we get Item at index 2 is : ' + groceries);



//MyAwesomeType
//List<MyAwesomeType>---------------   LIST
// or
//MyAwesomeType[] ------------------   ARRAY

//below code will work because for Apex they are the same
//Integer[] numbers = new List<Integer>();// interchangebly can be used, 


//----------- FOR LOOP SYNTAX ----------------
for(String each : groceries){
    System.debug('Current value: ' + each);
}


//System.debug('Value is: ' + groceries[0] );
//System.debug('Value is: ' + groceries[1] );
//System.debug('Value is: ' + groceries[2] );
//System.debug('Value is: ' + groceries[3] );  we going to use FOR LOOP for same

for(Integer index = 0; index<4; index++){
    System.debug('Value is: ' + groceries[index] );// we replace [0] with ] - [index] it will run four times

}


String[] CYDEO = new String[]{};
CYDEO.add('Akbar you are really good teacher');
System.debug(CYDEO);












