
/**    ---------- 3/28/2023 --------------

Apex Enforce Governor LIMIT
TO enforce fair usage of resources between all oragnizations
that share same underlying Salesforce infrastracture
Once you hit the limit there is no longer around it
Only way to fix it is by writing better code that follow salesforce limits



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


// we will hit the limit with this code 
 for(Integer i=1; i<=151 ;i++) {

  //List<Account> accounts = [Select ID FROM Account] ; 
    Account a = new Account(Name='Know Your Limit'); 
    insert a; 
}

  