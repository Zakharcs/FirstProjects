//------------------2/10/2023--------------------

//------------------ COLLECTIONS -----------------

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



// -------------------  SET  ----------------------
/**

Set is a type of collection that store unique elements 
unlike List, it does not keep insertion order, it does not have the idea of position. 

Set< DataType > yourVariableName = new  Set<DataType>() ; 

Set< DataType > yourVariableName = new  Set<DataType>{item1,item2,..itemN} ; 

 */
// Declaring and initializing an empty set
Set<Integer> targets = new Set<Integer>() ; // make sure to end your statement
// adding items into the set using .add method
targets.add(100);
targets.add(100);
targets.add(100);
targets.add(100);
targets.add(100);
targets.add(100);

System.debug(targets);

System.debug('Count of Items is : '+ targets.size()  );


//  Cretae a set of String to store 10 items with, 
//  single letter for each item

Set<String> letters = new Set<String>{'A', 'A', 'A', 
                                      'B', 'B', 'B' ,'C',
                                    'C', 'C', 'D' 
                                    };
// Print out the entire Set 
System.debug('Uniques letter counts:' + letters.size( ) );
// print out the size 

// use for each loop to print out each items


for( String eachLetter : letters ){
    System.debug(eachLetter);

}