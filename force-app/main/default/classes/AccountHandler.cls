    // -------- 4/10/2023 ------------

// Apex Basics & Database    Manipulate Records with DML


    /**
     * The Apex class must have a public static method called insertNewAccount
        The method must accept an incoming string as a parameter,
            which will be used to create the Account name
        The method must insert the account into the system
         and then return the record
     * 
     */
    public class AccountHandler {
    
        public static Account insertNewAccount(String accName) {
            Account a = new Account(Name = accName);
        
            try {
              insert a;
              System.debug('everything is great');
              return a;
            } catch (Exception e) {
              System.debug('ERROR OCCURED !!!!');
              return null;
            }
            
          }
    
    }