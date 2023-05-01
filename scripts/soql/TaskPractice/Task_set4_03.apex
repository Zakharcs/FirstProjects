
// --------------------- 3/28/2023 -----------------------

//## Task 3 Apex SOQL : 
 
//Get the Id of Account with name Super Parent.
//Get all the Opportunities with no Parent Account association (AccountId is empty)
//and store it in the list called orphanOpps. 
//Add All the orphanOpps under Account with name Super Parent.


//Get the Id of Account with name Super Parent.

//   Account supeAcc = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1];
//   Id supeAccId = supeAcc.Id ;  

 Id supeAccId = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1].Id ;


//Get all the Opportunities with no Parent Account association (AccountId is empty)
//and store it in the list called orphanOpps. 
List<Opportunity> orphanOpps = [SELECT Name, Amount 
                                FROM Opportunity 
                                WHERE AccountId = NULL];

//Add All the orphanOpps under Account with name Super Parent.

for(Opportunity each : orphanOpps) {
    each.AccountId = supeAccId ;
    each.Amount = 1000;  // just to make the trigger happy
}

// perform DML Operation to save it
update orphanOpps;






/**  ---------------APEX GOVERNOR LIMIT ------------------
  Number of SOQL queries: 2 out of 100
  Number of query rows: 1 out of 50000
  Number of SOSL queries: 0 out of 20
  Number of DML statements: 0 out of 150
  Number of Publish Immediate DML: 0 out of 150
  Number of DML rows: 0 out of 10000
  Maximum CPU time: 0 out of 10000
  Maximum heap size: 0 out of 6000000
  Number of callouts: 0 out of 100
  Number of Email Invocations: 0 out of 10
  Number of future calls: 0 out of 50
  Number of queueable jobs added to the queue: 0 out of 50
  Number of Mobile Apex push calls: 0 out of 10
 */

    



