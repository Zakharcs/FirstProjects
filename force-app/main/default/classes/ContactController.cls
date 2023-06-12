// ------Practice 31 Account Controller ----------
// --------------- 6/12/2023 --------------

public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    public static Contact getOneContact(){
       
        return [SELECT Id,Name From Contact LIMIT 1];

    }


}