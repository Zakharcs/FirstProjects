
// -------------------  5/2/2023 ----------------------


System.debug('Running apex-anon'); 

//List<Account> myAccList = AccountController.getAccountWithAnnualRevenue();

Queueable q = new AccountUpdateAsync('AWESOME');
//System.enqueueJob(queueable);
System.enqueueJob( q );


