
String season = 'winter' ; 

if(season == 'spring'){
    System.debug('Go Camping ');
}else if(season == 'summer'){
    System.debug('Go Swimming  ');
}else if(season == 'fall'){
    System.debug('Go Pick Pumkin ');
}else if(season == 'winter'){
    System.debug('Go to sleep ');
}else{
    System.debug('Invalid Season');
}

//-------------------------------------------
/*
swittch on expression {
    when value {   // when block 1
    // code block 1
    }
    
    when value2 {  // when block 2
    // code block 2}
    
    when value 3 { // when block 3
    // code block 3
    }
    
    when else { // default block, optional 
    // code block 4
    }
}
*/
//------it declared on top ----------------------------------------
switch on season {

    when 'spring'{
        System.debug('Go Camping') ;
    }
    when 'summer'{
        System.debug('Go Swimming') ;
    }
    when 'fall'{
        System.debug('Go Pick Pumkin') ;
    }
    when ' winter'{
        System.debug('Go to sleep') ;
    }
    when else {
        System.debug('Invalid Season') ;
    }

}



//TASK 1 ------------------------

Integer num1 = 15,num2 = 10, num3= 5;

if (num1> num2 && num2> num3){
     system.debug('The first number is the largest.');
}else{
    system.debug('The first number is not the largest.');
}


//TASK 2------------------------

Integer num5 = 30;

if (num5> 10) {
    System.debug('Positive');
}else if (num5< 50) {
    
    System.debug('negative');
}else{
    System.debug('Zero');
    
}
 

//TASK 3-------------------------

String Letter = 'a';
if(letter == 'a' || letter =='e' || letter == 'o' || letter == 'u' || letter == 'i' ){
    System.debug( 'Letter is vowel');
}else{
System.debug('letter is not vowel');
}  


//TASK 4--------------------------


Integer opportunityAmount = 500000 ;
String stage = 'Closed lost' ;
if(opportunityAmount > 100000 && stage == 'Closed won'){
System.debug('High Priority Opportunity, follow up immediately');
}else{
    System.debug('Create a task to follow up next week');
}  


//TASK 5----------------------------


String leadCompanySize = 'Small' ;

if(leadCompanySize == 'Small' || leadCompanySize == 'Medium' ){
System.debug('Good Lead');
}else{
    System.debug('take no action');
}



//TASK 6------------------------------


Long annualRevenue = 100000 ;
Integer numberOfEmployees = 150 ;

if(annualRevenue > 1000000 ||  numberOfEmployees > 500 ){
System.debug('High Potential Account');
}else{
    System.debug('Not a High Potential Account');
}



