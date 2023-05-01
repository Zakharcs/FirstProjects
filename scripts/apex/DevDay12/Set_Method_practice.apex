// ----------------- 2/17/2023 ------------------------

/**
Set is a collection of uniqiue elements
I't a unordered colllection meaning there is no index
oreder is not guaranteed

*/

Set<Integer> numberSet = new Set<Integer>();
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 
numberSet.add(10); 

System.debug('numberSet value is : ' + numberSet); 
//OUTPUT : numberSet value is : {10}

//----------- METHODS ------------------------

// size() 
System.debug('numberSet.size()  value is : ' + numberSet.size() ); 
//OUTPUT : numberSet.size()  value is : 1

// clear()   : delete all items in the Set 
 numberSet.clear(); 
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {}

// isEmpty()  : return true if size is 0 , return false if not 
System.debug('numberSet.isEmpty() value is : ' + numberSet.isEmpty() ); 
 //OUTPUT : numberSet.isEmpty() value is : true

// we are going to add some items, because set is empty by clearing it out:
numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
 System.debug('numberSet value is : ' + numberSet); 
 //OUTPUT : numberSet value is : {10, 20, 30}

// contains(valueToCheck)  // return true if item exist , false if not

System.debug('numberSet.contains(10)  value is : ' + numberSet.contains(10) ); //true
System.debug('numberSet.contains(15)  value is : ' + numberSet.contains(15) ); //false
 //OUTPUT : numberSet.contains(10)  value is : true
 //OUTPUT : numberSet.contains(15)  value is : false

// remove(valueToDelete)

// ------  UNLIKE LIST, IT EXPECTS A VALUE NOT INDEX -------
 numberSet.remove(30); 
 System.debug('numberSet value is : ' + numberSet); 
  //OUTPUT : numberSet value is : {10, 20}



// -----------  SECOND SESSION --------------------
// YOU CAN NOT LOOP THROUGH SET USING "FOR LOOP",
// BECAUSE THERE IS NO INDEX  

// WE CAN USE "FOR EACH LOOP" ----- code snippet: forEach
// update the collection name, hit tab to select data type if neeed
for(Integer each : numberSet) {
    System.debug('Current value : ' + each);
}

    
