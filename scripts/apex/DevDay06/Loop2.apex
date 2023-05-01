/**

Declare and initialize variable muffin
Countdown from 20 -> 0 dcrease by 2 :
Countdown from 20 -> 0 decrease by 2

//  if the number is grater than 10
  //  print out muffin count is XX
//  else 
  // priny out muffin is XX, I'm getting full
 */
// ------------  LOOP --------------


Integer muffin = 20 ; 

while( muffin >= 0 ){

    if(muffin > 10){
        System.debug('muffin count is ' + muffin) ; 
    }else{
        System.debug('muffin count is ' 
                        + muffin + ' I Got full, No Not Yeat ') ; 
    }

    muffin -= 2 ; //<-----GETTING OUT OF THE LOOP// muffin = muffin -2 ; 
}




//-------------------  LOOP -------------------

/**
Declare and initialize variable muffin
Countdown from 20 -> 0 

// if the number is greater than 10 
    // print out first half : muffin count is XX
    // decrease the muffin by 3 
// else 
    // print out second half : muffin count is XX
    // decrease the muffin by 2 
*/
// out condition is muffin > 10

 
// ------------ WHILE LOOP -----------------

// while(muffin >= 0){

//     if(muffin > 10){
//         System.debug('first half : muffin count is ' + muffin);
//         muffin -= 3 ; 
//     }else{
//         System.debug('second half : muffin count is ' + muffin);
//         muffin -= 2 ; 
//     }

// }


//------------- DO WHILE LOOP ----------

 do{
 if(muffin > 10){
        System.debug('first half : muffin count is ' + muffin);
        muffin -= 3 ; 
    }else{
        System.debug('second half : muffin count is ' + muffin);
        muffin -= 2 ; 
    }

}while(muffin >= 0) ;


Integer num = 10 ;
System.debug( 'num is now ' + (num - 3) ) ;  // num is now 7
System.debug( 'num is now ' + num  ) ;  // num is now 10
 

//-------------  FOR LOOP -----------

/**

For loop uses Integer exclusively :
but the other loops can use other data types as well

For Loop Syntax
 for( initilization ;loop condition ;increment|decrement ){
    // repeating stuff here 
 }

     
     // repeat stuff here

-----------------Initialization : 

this is where variable is declared and initial value is given ,
IT WILL ONLY ONCE WHEN THE LOOP START
 
-----------------Loop condition : 

this is where we put condition for the loop, 
as long as it's true the loop continue.

 

--------------Increment | Decrement : 

this is where we increment or decrement the value so we can change the condition and eventually get out of the loop , 
IMPORTANTLY , It run after each iteration 


for ( Integer count = 1 ; count < 10 ; count++  <---- you increment           ){

}
 */
//------------  DO THIS WAY --------------
//  Integer count = 1 ;

//  while(count<10){
    
//     System.debug(count) ;
//     count++ ; 

//  }     // counting 1 - 9   LOOP


//------------- OR WE CAN DO THIS WAY -------------
for(Integer count = 1 ; count < 10 ; count++){

    System.debug(count) ;
}



System.debug('---------------------') ;
// declare variable, check the condition,  increment | decrement
for(Integer level = 0 ; level <= 20 ; level += 2){

    System.debug(level) ;


}

System.debug('---------------------') ;

Integer age ;
for(age = 1 ; age < 10 ; age++){

    System.debug(age) ;
    age++ ;


}

System.debug('----------------           ') ;

Integer x = 10 ;

if(x < 5 ){
    Integer y = 10 ;

}
System.debug(x) ;













