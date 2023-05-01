
// ------------ 4/11/2023 ---------------


// Lead ld1 = Utils.getLead('Snow', 'Nightwatch LLC', true);
// System.debug('ld1 value is : ' + ld1);

// Lead ld2 = Utils.getLead('Stark','Stark Industry', false) ; 
// System.debug('ld2 value is : ' + ld2);

System.debug('-------------------------------');


// List<Lead> myLeads1 = Utils.getLeads('Lannister', 'Westro', true, 4);
// System.debug('myLeads1 value is : ' + myLeads1);


List<Lead> myLeads2 = Utils.getLeads('Smith', 'IBM', true, 2);
System.debug('myLeads2 value is : ' + myLeads2);


System.debug('-------------------------------');


LeadTriggerHandler.handleBeforeInsert( myLeads2 );
System.debug('myLeads2 value after calling the method is : ' + myLeads2);

// Create a list of lead with FirstName, lastName, Company with two elements
// call the method above to see your result

System.debug('-------------------------------');

List<Lead> myLeads3 = new List<Lead>();
myLeads3.add(new Lead(FirstName = 'Clark', LastName = 'Kent', Company = 'IBM') );
myLeads3.add(new Lead(FirstName = 'John', LastName = 'Smith', Company = 'Watson Studio') );
myLeads3.add(new Lead(FirstName = 'Yelena', LastName = 'Zak', Company = 'eClickEnterprise') );

//System.debug('myLeads3 value is : ' + myLeads3);

System.debug('-------------------------------');

//LeadTriggerHandler.handleBeforeInsert(myLeads3) ;

//System.debug('myLeads3  handleBeforeInsert  value is : ' + myLeads3);

//insert myLeads3 ;
