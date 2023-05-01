// ------------ 2/8/2023-------------
//    SWITCH ON , IF STATEMENT , TERNARY              

// TASK 1

// we can initialize two time, but declare it one time
Boolean  isCars = false ;
if(isCars = true){
    System.debug('This is not supposed to be') ;
}else{
    System.debug('You are right') ;
}


/**
                 TASK 2
-Write a program that can convert Miles to Km
The output should be like ‘10 miles = 16.09 km ’
 */
 // WE USE TO CONCATINATE 

 // 1 mile = 1.609 km

 decimal miles = 10 ;
 decimal km = miles * 1.609 ;

 System.debug(miles + ' miles = ' + km + 'kms') ;

/**
  // -----------------TASK 3----------------
-Write a program that can display the selected browser
-declare a String variable called browserName
-assume that the valid browsers are: chrome, safari, edge, firefox, opera
-if the browserName does not match with the valid browsers’ names, output should be 
    ‘Invalid browser’

Show three solutions;
1-Use switch
2-Use if
3-Use ternary
 */

//   ---------------- SWITCH ON STATEMENT -----------------
 String browserName = 'chrome' ;

 switch on browserName{
    when 'safari' , ' opera' , 'chrome' , ' edge' , ' firefox'{
        System.debug(browserName) ;
    }
    when else{
        System.debug('Invalid browser') ;
    }
 }

 //------------------ IF STATEMENT----------------
//   We write condition ; 
 if(browserName =='opera' || browserName =='safari' || browserName =='chrome' 
 || browserName =='firefox' ){
    
    System.debug(browserName) ;
}else{
    System.debug(' Invalid browser') ;
}


//--------------------TERNARY  STATEMENT---------------------

//    we use this    :   as else statement
String result = (browserName == 'safari') ? browserName :
(browserName == 'opera') ? browserName : 
(browserName == 'edge') ? browserName : 
(browserName == 'firefox') ? browserName :
(browserName == 'chrome') ? browserName :'Invalid browser' ;

System.debug(result) ;


/**   TASK 4
Q4-With a variable named size given, write a program that can display the price and calories of cappuccino as displayed below.
Valid sizes are tall, grande and venti and their prices and calories  are

Tall: price is $3.69
90 calories

Grande: price is $3.99
120 calories

Venti: price is $4.29
150 calories

If the size is invalid than the output should be ‘Invalid Size’

Solution 1: use if statement
Solution 2: use switch statement
Solution 3: use ternary
 */

 //----------------- IF ELSE STATEMENT----------------

 String size='Grande';

if(size=='venti'){
    System.debug(size+':Price is $4.29 and \n150 calories.');
}else if(size=='tall'){
    System.debug(size+':Price is $3.69 and \n90 calories.');
}else if(size=='grande'){
    System.debug(size+':Price is $3.99 and \n120 calories.');
}else{
    System.debug('Invalid size');
}
    

//-----------------SWITCH ON STATEMENT----------------

switch on size{
    when 'venti'{
        result=size+':price is $4.29 \n150 calories';
    }
    when 'tall'{
        result=size+':price is $3.69 \n90 calories';
    }
    when 'grande'{
        result=size+':price is $3.99 \n120 calories';
    }
    when else{
        result='Invalid size';
    }
}
System.debug(result);


//------------------TERNARY-------------------------

result = (size == 'venti')? size+':price is $4.29 \n150 calories':
(size =='grande')? size+':price is $3.99 \n120 calories':
(size == 'tall')? size+':price is $3.69 \n90 calories':
 ':Invalid Size';
System.debug(result);



/**
Q6- Write a program that can 
return the sum of odd numbers between 1 to 100
 */

//----------- SUM of the NUMBER -------------

//sum of odd numbers between 1-100

 Integer sum=0;
for(Integer i=1;i<100;i+=2){
    //sum=sum+i;
    sum+=i;
}
System.debug(sum);

//--------------------------------------------

Integer sum2 = 0;
for(Integer i=0; i<100; i+=2){
    sum2+=i;
}
System.debug(sum2);


//-------------TERNARY--------------------

Integer day=3;

//output should be Tuesday

String result= (day==1)? 'Sunday' : (day==2)? 'Monday' :
(day==3)? 'Tuesday' : (day==4)? 'Wednesday' : (day==5)? 'Thursday' : 
(day==6)? 'Friday' : 'Saturday';

System.debug(day+'.day of the week is '+result);




















