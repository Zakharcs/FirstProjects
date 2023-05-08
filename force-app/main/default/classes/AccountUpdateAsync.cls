


public  class AccountUpdateAsync implements Queueable {

    String description ;
    
    List<Account> accLstToProcess ;

    public AccountUpdateAsync(String description, List<Account> accLstToProcess){

        this.description = description ;
        this.accLstToProcess =  accLstToProcess ;
    }

    public void execute(QueueableContext context){

        // awesome code here
        System.debug('Running some awesome code in AccountUpdateAsync');
        // print out the value of description field
        System.debug('this.description value is : ' + this.description);
        

        // update tghe description field of the List of Account to 
        // the description provided,

        for(Account each : accLstToProcess) {
            
            each.Description = this.description ;

        }
        update accLstToProcess ;
        

    }


}
