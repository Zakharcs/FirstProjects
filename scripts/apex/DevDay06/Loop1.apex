/**
Create a variable called starCount
intialize it to zero 0 ;

use loop, to print out below
0 star ranger
1star ranger
2 star ranger
3 star ranger
4 star ranger
5star ranger
6 star ranger

 */
//    LOOP -------------------

//  Integer starCount = 0 ;

//  while(starCount <= 5){ 

//     System.debug(starCount + ' Star Ranger') ;

//     starCount ++ ;

//  }

// LOOP --------------------

// do{
//     System.debug( starCount + 'Star Ranger') ;
//     starCount ++ ;
    
// }while(starCount <= 6) ;

// LOOP ------------------------
// WHILE YOU ARE INSIDE THE LOOP 
// if the starCount is  0 print out, almost there to ranger status

Integer starCount = 1;
 while( starCount <= 6){

    if(starCount==0){
        System.debug('Almost There to 1 star');
    }else{
        System.debug(starCount + ' star ranger') ; 
    }
    
    starCount++ ; 
 
 }

//  LOOPS ---------------- while, if, if else

Integer starRanger = 1 ;
 while(starRanger<=6){

    if(starRanger == 0){
        System.debug('You are almost  1 star ranger');
    }else if(starRanger == 6){
        System.debug('You are All star ranger');
    }
    else{
       System.debug('You are ' + starRanger+ ' star ranger'); 
    }
    starRanger++;

}
 