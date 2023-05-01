
/**
Working with related records :

Every look up field in Salesforce
actually store th erecord Id of parent record
for Example
Account name field in contact stores account Id of Parent Account

*/

// create an account with 'Name From Apex'
Account a1 = new Account(Name = ' Account From Apex');
// insert that info SF
insert a1 ;
// print that out
System.debug('a1 value is : ' + a1); 
// store that Id field to a variable proper data type
Id accId = a1.Id ;
System.debug('accId value is : ' + accId); 

// Create a contact variable and assign it's value
Contact c1 = new Contact();
// Fill up the FirstName, LastName
c1.FirstName = 'Sergy';
c1.LastName = ' Z';
// and fill up AccountId field with the value you stored in first step
c1.AccountId = accId ;
// insert this into SF

//insert c1 ;


Contact c2 = new Contact(FirstName = 'Ellen', 
                        LastName = 'Zak', 
                        AccountId = accId );

insert c2 ; 

// create a case under c2 with subject 'Case under Ellen Conact'
// contactId field should be filled up with Contact c2 record Id above
Case myCase = new Case( Subject = ' Case under Apex Contact 2',
                        ContactId = c2.Id);  // gives us c2 Id field
// insert this case into Sf and observe the result  
insert myCase ;                     















