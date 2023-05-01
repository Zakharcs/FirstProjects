
// -------- 3/27/2023 ------------


 // This will throw an error since we are trying to store many Account
 // into a variable that hold single account
 //System.QueryException: List has more than 1 row for assignment to SObject
 //AnonymousBlock: line 14, column 1
 //Account a = [Select Name from Account];
 //System.debug('a value is : ' + a);

 String str = 'Green';

 // Get all the Contact FirstName, LastName
 // if the LastName field values is whatever variable str has
 // SELSCT FirstName, LastName FROM Contact
 // WHERE LastName = 'Green'

List<Contact> contactLst = [SELECT FirstName, LastName
                            FROM Contact
                            WHERE LastName = : str];
System.debug('contactLst value is : ' + contactLst);

System.debug('-----------------------------------'); 

 // Create 2 Variables for caseStatus and casePriority
 // Get All the cases with status of caseStatus and Priority of casePriority
 // Store the result in the List of Case
 String caseStatus = 'Closed';
 String casePriority = 'High';

 List<Case> caseList = [SELECT Subject, Status, Priority FROM CASE 
                        WHERE Status = :caseStatus and Priority = :casePriority];


// prit out Subject, Status, Priority for each Case
for(Case each : caseList){
    System.debug('--------------------------');
    System.debug(each.Subject + '----'+ each.Status + '----' + each.Priority);
}