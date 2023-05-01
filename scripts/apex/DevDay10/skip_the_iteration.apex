// --------------- 2/14//2023
/**
Somethimes we want ot skip the certain iteration if certine condition met
when wea re inside the loop

continue keyword can be used to skip the iteration
and jump to next iteration
 */

// count from 1 - 10 and print
// kip 5 while counting

for(Integer count=1; count<10; count++){

    //if (count !=5){
    if (count == 5){

        System.debug('Skipping the rest in this eteration');
        continue ;
    }
    System.debug('Count Value ' + count);
    
    }

//  }




/**
Create alist of Integers with couple items
Iterate over each items and print the number
Skip when you see any number that more than
 */

 List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};

 for( Integer eachNum : numLst ){
    
    // if statement
    if( eachNum > 10){
        continue ;
    }

    System.debug(eachNum);


}