// TASK 1----------

Integer num1 = 150;
Integer num2 = 300;

if(num1 > num2){
    system.debug('The Biggest Number is: ' + num1);
}else{
    system.debug('The Biggest Number is: ' + num2 );       
}


// TASK 2 ----------

Integer number1 = 50;
Integer number2 = 70;
Integer number3 = 30;

if(number1<number2 && number1<number3){
    system.debug('The smallest number is ' + number1);
}else if (number2<number1 && number1<number3){
    system.debug('The smallest number is ' + number2);
}else {
    system.debug('The smallest number is ' + number3);
   
}


//TASK 3------------


Boolean isBaby1Laughing = True;
Boolean isBaby2Laughing = False;

if(isBaby1Laughing && isBaby2Laughing ){
    system.debug('Both Babies are Laughing ');
}else if (isBaby1Laughing){
    system.debug('Only the First Baby is Laughing ');
}else if (isBaby2Laughing){
    system.debug('Only the Second Baby is Laughing ');
}else{
    system.debug('No babies are laughing ');
}      if (isBaby1Laughing == isBaby2Laughing) {
            System.debug('Both in the same mood');
        } else {
            System.debug('Not in a the same mood');
}


// TASK 4------------


String caseStatus = 'Escalated' ;
switch on(caseStatus){
    when 'New'{
        system.debug('Case Need Attention');
    }
    when 'Working'{
        system.debug('Case In Progress');
    }
    when 'Escalated'{
        system.debug('Case need to be reassigned and manager need to be notified');
    }
    when 'Closed'{
        system.debug('Case has been resolve');
    }
}


// TASK 5-----------


String opportunityStage = 'Closed Won';
Decimal probabilityPercentage; 

Switch on (opportunityStage){
    when 'Prospecting'{
        system.debug('probabilityPercentage = 0.1');
    }
    when 'Qualificationn'{
        system.debug('probabilityPercentage = 0.2');
    }
    when 'Need Analysis'{
        system.debug('probabilityPercentage = 0.3');
    }
    when 'Closed Won'{
        system.debug('probabilityPercentage = 1.0');
    }
        when 'Closed Lost'{
            system.debug('probabilityPercentage = 0');
        }
}


// TASK 6-------------
/** 
 Integer leadScore = 50 ;
 Boolean hasEmail = true ;
 Boolean hasPhone = true ;
 Boolean hasTwitter = true ;

 if(hasEmail == true){
    leadScore += 30 ;
 }
 if(hasPhone == true){
    leadScore +=15 ;
 }
 if(hasTwitter == true){
    leadScore +=5 ;
    System.debug('The lead Score: '  +  leadScore) ;
 }

 */




// TASK 7--------------


  String contactEmail= 'email';
  String mailingState = 'State of California' ;

   if( contactEmail !=null && mailingState == 'State of California'){
      System.debug('Valid Californnia Contact');
   }


// TASK 8---------------

String casePriority = 'Critical' ;
Boolean isTierOneCustomer = false ;

if ( isTierOneCustomer ){
    System.debug('Tier 1 Customer, handle within 1 hour') ;
}else{

    if(casePriority=='High' || casePriority=='Critical'){
        System.debug('Urgent case Handle in 6 hours') ;
    }else{
        System.debug('Handle within 2 days') ;
    }
}




System.debug('---------------------') ;
//  TASK 6 

/**  Write and Apex code that store leadScore as Integer inialize it's value to 50 and hasEmail, hasPhone, hasTwitter as Boolean variables 
   - in 3 separate if statements (without else) do as below : 
   - if hasEmail equal true , increase the value of leadScore by 20
   - if hasPhone equal true , increase the value of leadScore by 18
   - if hasTwitter equal true , increase the value of leadScore by 12
   - at the end , print out 'The lead store is  XX'
*/

Integer leadScore = 50 ;
Boolean hasEmail = false ;
Boolean hasPhone = false ;
Boolean hasTwitter = true ;

if( hasEmail ){
    //leadScore = leadScore + 20 ;  or we can do this way
    // one block from curley braces
    leadScore += 20 ;   
}if(hasPhone){
    leadScore += 18 ;
}if(hasTwitter){
    leadScore += 12 ;
    System.debug('The lead score is ' + leadScore) ;
}


