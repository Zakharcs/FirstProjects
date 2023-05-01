
// AFTERNOON SESSION //

//  there's nothing you can do with the other loops 
//  that you can't do with for loop!
/**
  Count from 10 -1 using for loop 
 */


 for(Integer count = 10 ; count > 0 ; count--){

    System.debug(count) ;
 }


System.debug('----------------------------') ;

/**
  Count down from 100 - 0 
  decreasing number by 10 each time
 */
 
 for(Integer count = 100 ; count > 0 ; count -=10 ){

    System.debug(count) ;
    
 }


System.debug('----------------------------') ;

//-------------- FOR Loop Practice------------------

// MULITPLICATION with CONCATINATION


for(Integer count = 1 ; count <= 10 ; count++){

    System.debug( count + ' X 5 = ' + (count * 5) ) ;
}



/*
Continue from above code,
Above code works great if you just want to get the 
multiplicatin table of 5, we want to be able to 
provide any number not just 5 and generate
multiplication table of any numbers
 */

//  Integer num = 5 ;
//  Integer count = 1 ;
 
//  // first number you get from variable count 
//  // second number you get from variable num 
//  // result you get by multiplying 2 numbers 
//  // eventually generate this output 
//  //  in below format 
//  //  // 1 X 5 = 5   <------ final objective

//  System.debug(count + ' X ' + num + ' = ' + ( count*num ) ) ;


System.debug('------------------------') ;

// --------------TIMES TABLE MULTIPLICATION-----------------------   

Integer num = 9 ;

for(Integer count = 1 ; count <=10 ; count++){

System.debug(count + ' X ' + num + ' = ' + ( count*num ) ) ;

}



/**------------- PRIBAVLENIE ------------------
Give a number, print out below  :

luckyNumber + 1 = the result
luckyNumber + 2 = the result
luckyNumberr + 3 = the result
luckyNumber +  4 = the result
...........so on
 */

System.debug('----------------------------') ;
 Integer luckyNumber = 7 ;

 for(Integer count = 1 ; count <=10 ; count++){
      //  luckyNumber + count = the result
    System.debug(luckyNumber + ' + ' + count + ' = '
    + (luckyNumber + count)   ) ;

 }


