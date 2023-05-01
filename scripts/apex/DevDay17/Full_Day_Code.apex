/**
Create an empty List of Lead

use for loop to go through 10 iteration
add lead with FirstName, LastName, Company fields filled up as below
'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
....
'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10' 

insert into SF
*/

List<Lead> leadList = new List<Lead>(); 

for(Integer i=1; i<=10 ;i++) {
    
    // Test Lead FN 1  , Test Lead LN 1 , Company 1
    Lead ld = new Lead(FirstName = 'Test Lead FN '+i , 
                       LastName  = 'Test Lead LN '+i , 
                       Company   = 'Company '+i
                       ); 
    // add it to the list 
    leadList.add(ld) ; 
}
System.debug('leadList value is : ' + leadList); 
insert leadList ; 
System.debug('leadList value After insert is : ' + leadList); 




/**
Create a Lead with required Fields filled up
insert it into your org
Create a variable with Task sObject type and assign the value
fill up the below fields for this task
WhoId with the Id of the lead created above
Priority 'High'
ActivityDate Date 7 days from now */

Lead myLead = new Lead(LastName='Skywalker', Company ='Galactic Empire');
System.debug('ld value before insert is : ' + myLead); 
insert myLead ; 
System.debug('ld value After insert is : ' + myLead); 

Task t1         = new Task(); 
t1.WhoId        = myLead.Id ; 
t1.Priority     = 'High' ; 
t1.ActivityDate = Date.today() + 7 ; // do same thing as addDays(7)
t1.Subject      = 'Task for Lead from Apex' ;  
// insert this task into Salesforce 
insert t1 ; 



// Create List of Opportunity
List<Opportunity> oppList = new List<Opportunity> ();  
// Add 10 items in it with valid Opportunity required fields filled up
for(Integer i=1; i<=10 ;i++) {

    Opportunity opp = new Opportunity(); 
    // Name, Opp - 1(2,3,4,5..10)
    opp.Name = 'Opp - ' + i ; 
    // ClosedDate (10 days from Today),
    opp.CloseDate = Date.today().addDays(10) ; 
    // StageName ='Prospecting', `
    opp.StageName = 'Prospecting' ;
    // Amount : random Integer between 0-100000
    opp.Amount   = Math.round( Math.random() * 100000); 
    // add it to the list 
    oppList.add( opp ) ; 
}
// insert the list into your org
insert oppList ; 

// Create an Account with Name = 'Parent of Cool Opps'
Account coolAccount = new Account(Name = 'Parent of Cool Opps'); 
// insert into Salesforce org
insert coolAccount ; 

// Create an empty List of Opportunity called coolOppsList
List<Opportunity> coolOppsList = new List<Opportunity> (); 
// Loop through your entire List of 10 items
for(Opportunity each : oppList) {
   
    // If amount is greater than 60000
    if(each.Amount > 60000){
    // Update AccountId field to Id of Account you created earlier
        each.AccountId = coolAccount.Id ; 
    // Add the Opportunity to coolOppsList
        coolOppsList.add(each); 
    }
}
// Update the coolOppsList in your org
update coolOppsList ; 

// Go to user interface and observe you have filled up Account Name field of 
//all opportunities that has amount over 60000 to 'Parent of Cool Opp' Account record





// 7. Create an Opportunity variable and assign the value with required fields set 
//    - `Name` , `ClosedDate` , `StageName`
Opportunity o1 = new Opportunity(); 
o1.Name         = 'Super Good Opp' ; 
o1.CloseDate    = Date.newInstance(2022, 10, 28) ; 
o1.StageName    = 'Prospecting' ;  

System.debug('o1 value is : ' + o1); 

// print out monthsBetween Date.today() and o1.CloseDate
Integer overDueInMonth = o1.CloseDate.monthsBetween( Date.today() ) ; 
System.debug('Month passed since ClosedDate value : ' + overDueInMonth); 
// how to put a condition to check the closed date is over 3 month 
//    - if `ClosedDate` is over 3 months (use `monthsBetween` method) and `StageName` is not `Closed Won` 
if(overDueInMonth>3 && o1.StageName !='Closed Won' ){
    //update the `StageName` value to `Closed Lost` 
    o1.StageName = 'Closed Lost' ; 
}

System.debug('o1 value After update is : ' + o1); 




   
//    - Now let's level up , given below stageNames List containing all stages in Opportunity
    List<String> stageNames = new List<String>{
        'Prospecting',
        'Qualification',
        'Needs Analysis',
        'Value Proposition',
        'Id. Decision Makers',
        'Perception Analysis',
        'Proposal/Price Quote',
        'Negotiation/Review',
        'Closed Won',
        'Closed Lost'
    };

    // how to get one item from above list : get method with index 
    // as long as we provide valid index from 0 to itemCount-1 
    // we will get an item, so get a random number between 0 to itemCount-1 
    // and use get method and provide that random number then we get random item 
    Integer randomIndex = Math.round(   Math.random()*9    ); 
//    - Create a String variable called `selectedStageName`
    String selectedStageName = stageNames.get(randomIndex); 
    System.debug('selectedStageName value is : ' + selectedStageName); 
//       - assign the value to a **random** item from above List of 10 item (from index 0-9)
//    - Create another Opportunity instance with below fields
//       - `Name` , `ClosedDate` , `StageName`(assign using `selectedStageName`)
//    - if `ClosedDate` is over 3 months and `StageName` is not `Closed Won` 
//       - update the `StageName` value to `Closed Lost` 
    Opportunity o2 = new Opportunity(); 
    o2.Name         = 'Super Good Opp' ; 
    o2.CloseDate    = Date.newInstance(2022, 10, 28) ; 
    o2.StageName    = selectedStageName ;  

    System.debug('o2 value is : ' + o2); 
    Integer overDueInMonth2 = o2.CloseDate.monthsBetween( Date.today() ) ; 
    System.debug('Month passed since ClosedDate value : ' + overDueInMonth2); 
    
    if(overDueInMonth2>3 && o2.StageName !='Closed Won' ){
        o2.StageName = 'Closed Lost' ; 
    }

    System.debug('o2 value After update is : ' + o2); 






    /**
We created a Custom Object as below 
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency   

Now we need to access here in VSCode 
Go to command pallatte and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 

 */

Vehicle__c v1 = new Vehicle__c(); 
v1.Year__c = 2023 ; 
v1.Make__c = 'Tesla' ; 
v1.Model__c = 'Model X';
v1.Price__c = 127000 ; 

System.debug('v1 value is : ' + v1); 
insert v1 ; 
System.debug('v1 value is : ' + v1); 
 
// Create List of Vehicle and insert in bulk 

List<Vehicle__c> carList = new List<Vehicle__c>();
// update the price to 100K and add v1 into this list 
v1.Price__c = 100000 ; 
carList.add(v1) ; 
// add 2 more Vehicle__c with Make filled up
carList.add(  new Vehicle__c(Make__c = 'Lucid')     ) ; 
carList.add(  new Vehicle__c(Make__c = 'Toyota')     ) ; 

System.debug('carList value is : ' + carList); 

// insert what's not already in salesforce
// and update what is already in salesforce
// from this list into Salesforce
// upsert DML operation : update + insert
upsert carList ; 






/**
We created a Custom Object as below 
Create Custom Object
   Vehicle 
        Name field make it auto number 
        In this format V-{000}
   Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency
          Contact as Lookup to Contact object 

Now we need to access here in VSCode 
Go to command pallette and type 
SFDX: Refresh Object Definition
select All object 
now you have access to latest changes you made under Object manager 

 */

 // Create a contact with LastName 
 // insert into SF 
 Contact con = new Contact(LastName = 'Snow'); 
 insert con ; 
 System.debug('con value is : ' + con); 
 // Create a vehicle with all the fields
 Vehicle__c v2 = new Vehicle__c( Make__c  = 'Audi' , 
                                 Model__c = 'A8'  , 
                                 Year__c  = 2024  , 
                                 Price__c = 10000000 ) ;  
 // including ContactId field set to the Id from above contact 
 v1.Contact__c =  con.Id ; 
 // insert this contact 
 insert v2 ; 
 System.debug('v1 value is : ' + v2); 






 //  Create an Account variable with name targetAcc and assign value with below fields 
    Account targetAccount = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    targetAcc.Name              = 'Salesforce Tower234';
    targetAcc.BillingState      = 'California';
    targetAcc.BillingCity       = 'San Francisco';
    targetAcc.BillingCountry    = 'US';
    targetAcc.BillingPostalCode = '11111';
//    - insert it into Salesforce
    insert targetAccount ; 
    System.debug('targetAcc value is : ' + targetAcc); 

//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
    targetAcc.ShippingCountry = targetAcc.BillingState ; 
//       - ShippingState       has same value as BillingState
    targetAcc.ShippingState = targetAcc.BillingCountry ; 
//       - ShippingCity        has same value as BillingCity
    targetAcc.ShippingCity = targetAcc.BillingCity ; 
//       - ShippingPostalCode  has same value as BillingPostalCode
    targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode ; 

    // save it back to Salesforce 
    update targetAcc ; 




    //  Create an Account variable with name targetAcc and assign value with below fields 
    Account targetAccount1 = new Account(); 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
    targetAcc.Name              = 'Salesforce TDX';
    targetAcc.BillingState      = 'California';
    targetAcc.BillingCity       = 'San Francisco';
    targetAcc.BillingCountry    = 'US';
    targetAcc.BillingPostalCode = '11111';
//    - insert it into Salesforce
    insert targetAccount1 ; 
    System.debug('targetAcc value is : ' + targetAcc); 

//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
    targetAcc.ShippingCountry = targetAcc.BillingState ; 
//       - ShippingState       has same value as BillingState
    targetAcc.ShippingState = targetAcc.BillingCountry ; 
//       - ShippingCity        has same value as BillingCity
    targetAcc.ShippingCity = targetAcc.BillingCity ; 
//       - ShippingPostalCode  has same value as BillingPostalCode
    targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode ; 

    // save it back to Salesforce 
    update targetAccount1 ; 

System.debug('------------------');

  //--------------------------

/// create a contact under this account 
// fill up the fields as below 
//       - `LastName` : AccountName followed by 1 contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
// insert into salesforce 

 Contact contact = new Contact(); 
 con.AccountId         = targetAcc.Id ; 
 con.LastName          = targetAcc.Name + ' 1 contact'; 
 con.MailingCountry    = targetAcc.BillingCountry ; 
 con.MailingState      = targetAcc.BillingState ; 
 con.MailingCity       = targetAcc.BillingCity ; 
 con.MailingPostalCode = targetAcc.BillingPostalCode ; 

 insert contact ; 



//----------

//   Continue from above task (in different file)
//    - Create 5 placeholder Contact under this **Account** and fill up as below
//       - `LastName` : AccountName followed by (1,2,3,4,5) contact
//       - `MailingCountry`     has same value as Account `BillingCountry`
//       - `MailingState`       has same value as Account `BillingState`
//       - `MailingCity`        has same value as Account `BillingCity`
//       - `MailingPostalCode`  has same value as Account `BillingPostalCode`
   
//    - Steps : 
//       - Create an empty **List of Contact** with name `contactList`
//       - use for loop to iterate over 5 iteration 1-5
//       - Create an Contact variable , assign value as above 
//       - assign the `AccountId` field to the **Id** of `targetAcc`
//       - add it to your `contactList`
//          - or do in one shot
//       - outside of your loop
//       - **insert** `contactList`
//          - print out the List, observe Ids generated for Contact
//       - verify from your Salesforce org