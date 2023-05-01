

Contact c1 = Utils.getContact('Snow') ; 
System.debug('c1 value is : ' + c1);
// insert c1 ; 


System.debug('Utils.getContact(\'ABC\') value is : '
                        + Utils.getContact('ABC'));


List<Contact> myContacts =  Utils.getContacts('Snow',10) ; 
// size of myContacts should be 10
System.debug('myContacts value is : ' + myContacts);






//  Apex Basics & Database    Manipulate Records with DML

// Account newAcc = Utils.insertNewAccount(String accName);
// System.debug('newAcc value is : ' + newAcc);


Account myAcc = Utils.getAccountAndContacts('Acc with Contact', 4);
System.debug('myAcc value is : ' + myAcc);



Account acc = [SELECT Name, Id, (SELECT LastName from Contacts)
               FROM Account
               WHERE Name = 'Acc with Contact'
               LIMIT 1 ] ; 

// Print account Name
System.debug('acc.Name value is : ' + acc.Name); 
// how do we access subquery part of the parent to child query
System.debug('acc.Contacts value is : ' + acc.Contacts);


List<Contact> accChildContacts = acc.Contacts ;
// print the contact lastName
for(Contact each : accChildContacts){

    System.debug('Contact Name value is : ' + each.LastName);


}


