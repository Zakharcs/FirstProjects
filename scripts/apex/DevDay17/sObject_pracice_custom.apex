

/**
We created custom Object Vehicle in Salesforce
Create Custom Object
Vehicle 
        Name field make it auto number 
        In this format V-{000}
   
Fields 
          Year as a number 
          Model as text 
          Make as text 
          Price as currency

 Now We need to access data here in VScode 

Metadata is data that describes other data. 
For example, in a Salesforce org, 
there is a standard object called Account. 
When you add a record with a customer's contact information to an Account,
you are adding metadata and data. 
Field names, such as first name and last name are metadata




 */

 Vehicle__c v1 = new Vehicle__c();
 v1.Year__c = 2023;
 v1.Make__c = 'Lexus';
 v1.Model__c = 'LS 460';
 v1.Price__c = 125000;
 System.debug('v1  value is : ' + v1 ); 
 //insert v1;
 System.debug('v1  value is : ' + v1 ); 

 // Create List of Vehicles and insert in bulk
 List<Vehicle__c> carList = new List<Vehicle__c>();
 // add v1 into this list
 // and update price to 100k 
 v1.Price__c = 100000 ;
 carList.add(v1) ;
 // add 2 more Vehicle__c with Make an Price filled up
 carList.add( new Vehicle__c(Make__c = 'Tesla') ) ;
 carList.add( new Vehicle__c(Make__c = 'Toyota') ) ;
 System.debug('carList value is : ' + carList) ; 
 
// upsert DML operation = update + insert
 /**
 The upsert DML operation creates new records 
 and updates sObject records within a single statement, 
 using a specified field to determine the presence of existing objects, 
 or the ID field if no field is specified.
  */
// insert this list into Salesforce
upsert carList ; 


// Add custom look up field: Contacts












