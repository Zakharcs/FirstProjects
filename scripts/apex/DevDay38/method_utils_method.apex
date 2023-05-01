
//  ---------- 4/13/2023 ------------

// --------- RUNNING THIIS CODE METHOD 


// Opportunity o1 = Utils.getOneOpportunity('Test ', true);
// System.debug('o1 value is : ' + o1);

// Opportunity o2 = Utils.getOneOpportunity('Test2', false);
// System.debug('o2 value is : ' + o2);


// List<Opportunity> opps1 = Utils.getManyOpps('Music', 5, true) ; 
// System.debug('opps1 value is : ' + opps1);


List<Opportunity> opps2 = Utils.getManyOpps('Opp Under account', 3, false) ; 
System.debug('opps2 value is : ' + opps2);

// insert opps2 ; 

// Create an Account using Utils.insertNewAccount
Account newAcc = Utils.insertNewAccount('Galactic Empire'); 
// and put all opps2 under this account 
// in order to do that we need to set AccountId field of all opps in the list to newAcc.Id
for(Opportunity each : opps2) {
    each.AccountId = newAcc.Id ; 
}
insert opps2 ; 




/**
 * Create a method called insertAccountWithOpps
 * @param accName  accountName
 * @param count   count of child opportunity 
 * @return the account with all the opportunity created under
 *    opportunity name should be accountName + Opp 12345 
 *    closedDate 7 days from now 
 *    StageName  Prospecting 
 */