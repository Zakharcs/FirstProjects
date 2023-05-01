// CAN BE ON INTERVIEW   
//  --------------- HOW TO FIND OUT SUM of ANY NUMBER

// WHEN WE LEARN COLLECTION
// Get the sum of number from 1 -10 
// And store in into a variable CALLEd SUM
Integer sum = 0 ;

for(Integer count =1 ; count <=100 ; count++){

    System.debug('Interation number: ' + count) ;
    //    sum = sum + count ;  or you can do this way
    sum += count ;
    System.debug('Sum : ' +sum) ;

}

System.debug(' Sum of 1 to 10 is ' + sum) ;