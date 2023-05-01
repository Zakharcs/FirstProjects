

// ----------- 3/31/2023 -----------------
// ---------- SOSL IN CODE ------------

String soslFindClause = 'Wingo OR SFDC';      // we created bind variable to store it in variable
List<List<sObject>> searchList = [FIND :soslFindClause IN ALL FIELDS
                    RETURNING Account(Name),Contact(FirstName,LastName,Department)];
Account[] searchAccounts = (Account[])searchList[0];
Contact[] searchContacts = (Contact[])searchList[1];
System.debug('Found the following accounts.');
for (Account a : searchAccounts) {
    System.debug(a.Name);
}
System.debug('Found the following contacts.');
for (Contact c : searchContacts) {
    System.debug(c.LastName + ', ' + c.FirstName);
}