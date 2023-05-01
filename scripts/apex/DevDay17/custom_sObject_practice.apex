
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

          *Also we added Lookup to Contact object

 Now We need to access data here in VScode 

Metadata is data that describes other data. 
For example, in a Salesforce org, 
there is a standard object called Account. 
When you add a record with a customer's contact information to an Account,
you are adding metadata and data. 
Field names, such as first name and last name are metadata




 */
 // crwate a contact with LastName
 // insert into SF
Contact con = new Contact(LastName = 'Zaharchenko');
insert con ;
System.debug('con  value is : ' + con ); 
 // Crate a vehicle with all the fields
 Vehicle__c v1 = new Vehicle__c( Make__c  = 'Audi' , 
                                 Model__c = 'A8'  , 
                                 Year__c  = 2024  , 
                                 Price__c = 10000000 ) ;
 // Including ContactId field set to the Id from above contact
v1.Contact__c = con.Id ;   // we set Id Variable
 // insert to SF
insert v1 ; 

System.debug('ev1  value is : ' + v1 ); 

System.debug('v1.Name value is : ' + v1.Name); 

