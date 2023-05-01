
// CONTACT    
//create a Contact variable and initializind it's value

Contact c1 = new Contact();
c1.FirstName = 'Segey' ;
c1.LastName = 'Zakharchenko' ;
c1.Email = ('sergey.zakharchenko@live.com');
// printing
System.debug('c1 value is : ' + c1); 




// or you can directly provide firld value inside ()
// while assigning the value to the variable
Contact c2 = new Contact(FirstName='Sergey', LastName='Z');
System.debug('c2 value is : ' + c2); 



 // Create a List of Contact and initialize it's value 
List<Contact> contacts = new List<Contact> ();  
 // store above 2 Contact instances into the list 
contacts.add( c1 ); 
contacts.add( c2 ); 
contacts.add( new Contact(FirstName='Yelena', LastName='Z') );

System.debug('contacts value is : ' + contacts); 


System.debug('--------------------------'); 
 // Print out the first item in the List (either with list syntax or array)

System.debug('contacts.get(0) value is : ' + contacts.get(0) ); 
System.debug('contacts[0] value is : ' + contacts[0]);
 
 // Print out the first item First name in the List (either with list syntax or array)
 // Print out the first item First name in the List (either with list syntax or array)
 
System.debug('------------------');
//  String firstContactFirstName = contacts.get(0).FirstName ; 
String firstContactFirstName = contacts[0].FirstName ;    // array option
System.debug('firstContactFirstName value is : ' + firstContactFirstName); 



 // Print out the second item in the List (either with list syntax or array)



 
 // Print out the second item last name in the List (either with list syntax or array)




System.debug('--------------------------'); 

// Create a Opportunity variable and assign its value
// fill up below fields 
// Name , CloseDate, StateName, ClosedDate

Opportunity o1 = new Opportunity(); 
o1.Name = ' Opp from the Apex' ;
o1.StageName = 'Closed Won' ;
o1.CloseDate = Date.today();

System.debug('o1 value is : ' + o1); 




Opportunity o2 = new Opportunity(); 
o1.Name = ' Opp 2 from the Apex' ;
o1.StageName = 'Closed Won' ;
o1.CloseDate = Date.today();

// Create a list of opportunity and add above 2 items

List<Opportunity> opps = new List<Opportunity>{o1, o2};
System.debug('opps value is : ' + opps); 

// insert this opps into Salesforce

//  insert opps;
//  insert opps; 