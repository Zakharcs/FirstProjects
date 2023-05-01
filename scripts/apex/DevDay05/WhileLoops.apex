Boolean isBaby1Laughing = false ;
Boolean isBaby2Laughing = false ; 
// exclusive to boolean variables only in conditional statement 
// you do not have to use ==true to check for equality 
// you can simply use the variable name itself and it will do the same
 if(isBaby1Laughing && isBaby2Laughing  ){
     System.debug('Both are laughing ') ; 
 }else if(isBaby1Laughing){
     System.debug('Only Baby 1 is laughing') ; 
 }else if(isBaby2Laughing){
      System.debug('Only Baby 2 is laughing') ; 
 }else{
      System.debug('No babies are laughing') ; 
 }


//isBaby1Laughing == isBaby2Laughing

if(isBaby1Laughing == isBaby2Laughing){
    System.debug('Both are in the same mood'); 
}else{
    System.debug('Both are not in the same mood'); 
}



/**

Write an Apex that store caseStatus as String 
   - if  caseStatus is New print 'Case need attention'
   - if  caseStatus is Working print 'Case in progress'
   - if  caseStatus is Escalated print 'Case need to be reassigned and manager need to be notified'
   - if  caseStatus is Closed print 'Case has been resolved'

 */

String caseStatus = 'New' ;

switch on caseStatus {

    when 'New' {
        System.debug('Case need attention') ;
    }
    when 'Working' {
        System.debug('Case in progress') ;
    }
    when 'Escalated' {
        System.debug('Case need to be reassigned and manager need to be notified') ;
    }
    when 'Closed' {
        System.debug('Case has been resolved') ;
    }
    when else{
        System.debug('Nothing match, invalid case status') ;
    }

}



 /**Write an Apex code that strore Case's Priority (casePriority) as String and is Tier One Customer or not(isTierOneCustomer) as Boolean.
   - if isTierOneCustomer value true , print 'Tier 1 Customer, handle within 1 hour'
   - else
   - check if a Case's Priority is either 'High' or 'Critical' 
   - if so , print out 'urgent case handle inn 6 hours'
   - else print out 'handle within 2 days'
*/

String casePriority = 'Critical' ;
Boolean isTierOneCustomer = false ;

if ( isTierOneCustomer ){
    System.debug('Tier 1 Customer, handle within 1 hour') ;
}else{
    //nested if statement
    if(casePriority=='High' || casePriority=='Critical'){
        System.debug('Urgent case Handle in 6 hours') ;
    }else{
        System.debug('Handle within 2 days') ;
    }
}


/** 
Dev Day05 LOOPS--------------
Loop, is for repeating certain block of code
as long as certain condition is true


There are 4 types of loops:

1-while loop
2-do while loop 
3-for loop
4-for each loop 
*/
//Syntax LOOP

Integer count = 1 ;

// print out the count by incrementin the value by one until you rich number 5
// System.debug( count++ ) ;  // result is 1
// System.debug( count++ ) ;  // 2
// System.debug( count++ ) ;  // 3
// System.debug( count++ ) ;  // 4
// System.debug( count++ ) ;  // 5 and next time is 6

// Or you can declare this way:
while(count < 6 ){
    System.debug(count ++) ;
    // or you can do this
    //count++ ;
}

// Sckip count by 2:
System.debug('------------------------------') ;


Integer level = 1 ;
// print out skip counting by two 2:
//if the starting number is 0:
// 0, 2, 4, 6, 8, 10....
//if startin number is 1:
// 1, 3, 5, 7, 9, 11....
// until 15

while(level < 15){
    System.debug(level) ;
    // level = level + 2 ;  you can do this way
    level += 2; // short for above

}


System.debug('------------------------------') ;

//Count form 10 - 1 :
Integer cupcakeCount = 10 ;

while(cupcakeCount > 0){
    System.debug(cupcakeCount) ;  // or you can do this (cupcakeCount --) ;
    --cupcakeCount ;

}


System.debug('------------------------------') ;// devider
// start print out 15, countdown 
// by decreasing by 3 each time
// 15, 12, 9, 6, 3, 0

Integer candy = 15 ;

while( candy >= 0 ){
    System.debug( candy ) ;
    candy -= 3 ;  // decrease by 3

}

System.debug('------------------------------') ;

Integer score = 1 ;
//count from 1 to 10:
do{

    System.debug( score++ ) ;

}while( score < 11 ) ;



System.debug('------------------------------') ;
//Countdown 10, 9, 8......

Integer sushi = 10;

do{
    System.debug( sushi --) ;
    
}while( sushi > 0) ;































