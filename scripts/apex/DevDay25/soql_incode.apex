
// ------------ 3/21/2023 ------------------

// -------- SOQL --------- Salesforce Object Query Language ---------------

List<Account> allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];
for ( Account each : allAccounts){

    System.debug('Current Name : ' + each.Name);

}