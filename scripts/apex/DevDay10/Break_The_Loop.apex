/**

 You can exit any type of loop early 
 using the keyword  break when needed 

 */

 // create a list of integer with some items in it 


List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};

// loop through each and every item, when you find 10 , stop looping 

for(Integer eachNum  : numList ){

    System.debug(eachNum) ; 
    if( eachNum ==10 ){
        System.debug('YAY') ; 
        // in order to break the loop to stop looking
        // you can use break statement 
        break ; 
    }

}




/**

Sometimes we want to skip certain iteration if certain condition met
when we are inside the loop 

continue keyword can be used to skip the iteration 
and jump to next iteration 

 */

 // count from 1- 10 and print
 // skip 5 while counting 

 for(Integer count=1 ;  count<=10 ; count++) {
    
    if(count!=5){
        System.debug('count value ' + count);
    }
 }




for(Integer count=1 ;  count<=10 ; count++) {
    
    if(count==5){
        System.debug('skipping the rest in this iteration') ; 
        continue ; 
    }
    
    System.debug('count value ' + count);

 }



/**
 Imagine you are the teacher and you have 10 kids 

 You are looking for the trouble maker by going through each and every kid , once you found the one, you stop looking at the rest

 */


  /**
 Imagine you are the teacher and you have 10 kids 

 You are giving treat to all the kids expect the trouble maker by going through each and every kid , you skip the kid that is trouble maker while distributing the treat and continue with the next one. 

 That's what continue keyword does in the loop

 */



/**

Sometimes we want to skip certain iteration if certain condition met
when we are inside the loop 

continue keyword can be used to skip the iteration 
and jump to next iteration 

 */

// count from 1- 10 and print
// skip 5 while counting

for (Integer count = 1; count <= 10; count++) {
  if (count == 5) {
    System.debug('skipping the rest in this iteration');
    continue;
  }

  System.debug('count value ' + count);
}

/**
 Imagine you are the teacher and you have 10 kids 

 You are giving treat to all the kids expect the trouble maker by going through each and every kid , you skip the kid that is trouble maker while distributing the treat and continue with the next one. 

 That's what continue keyword does in the loop

 */

/**
Create List of Integer with couple items 
Iterate over each items and print the number 
skip when you see any number that more than 10
  */

List<Integer> numLst = new List<Integer>{ 19, 1, 23, 4, 6, 99 };

for (Integer eachNum : numLst) {
  if (eachNum > 10) {
    continue;
  }

  System.debug(eachNum);
}




/**
List is a collection type that store elements in insertion order 
each and every elements are stored in a position that start with 0 

for example if you have below list 
//                                  item  1   2   3  4  5  6  
List<Integer> numLst = new List<Integer>{ 19, 1, 23, 7, 11, 99 };
//                                  index 0   1   2  3   4   5 

 */

 List<Integer> numLst1 = new List<Integer>{ 19, 1, 23, 7, 11, 99 };

 // get the element at certain index using  get method 

// get the first element and store it in a variable 
 Integer item1 = numLst1.get(0) ; 
 System.debug('first item value ' + item1) ;   

 // directly print out the second item value using get method 
  System.debug('second item value ' +  numLst1.get(1)      ); 

  System.debug(  numLst1.get(2)  ); 
  System.debug(  numLst1.get(3)  ); 
  System.debug(  numLst1.get(4)  ); 
  System.debug(  numLst1.get(5)  ); 

System.debug(numLst1) ; 


System.debug('----------------------------'); 
// iterate over all the elements in the loop without for each loop 

for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}



for(Integer index=0  ; index<6 ; index++ ){
    System.debug(   numLst.get(index)   ); 
}

//is equivalent of 

System.debug(  numLst.get(0)  ); 
System.debug(  numLst.get(1)  ); 
System.debug(  numLst.get(2)  ); 
System.debug(  numLst.get(3)  ); 
System.debug(  numLst.get(4)  ); 
System.debug(  numLst.get(5)  );



