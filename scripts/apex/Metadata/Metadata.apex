
public class UpdateContactPageLayout 
{
    public Metadata.Layout addLayoutItem()
    {
        List<Metadata.Metadata> layoutsList = Metadata.Operations.Retrieve(Metadata.MetadataType.Layout,
                                                                           new List<String>{'Contact-Contact Layout'});
        Metadata.Layout layoutMetadata = (Metadata.Layout) layoutsList.get(0);
        Metadata.LayoutSection contactLayoutSection = null;
        
        for (Metadata.LayoutSection section : layoutMetadata.LayoutSections)
        {
            if(section.label == 'Additional Information')
            {
                contactLayoutSection = section;
                break;
             }
            
        }
        List<Metadata.LayoutColumn> contactColumns = contactLayoutSection.layoutColumns;
        List<Metadata.LayoutItem> contactLayoutItems = contactColumns.get(0).layoutItems;
        
        Metadata.LayoutItem newField = new Metadata.LayoutItem();
        newField.behavior = Metadata.UiBehavior.Edit;
        newField.field = 'AMAPI__Apex_MD_API_Twitter_name__c';
        contactLayoutItems.add(newField);
        return layoutMetadata;
        
    }
}




public void updateMetadata() 
    {        
        Metadata.CustomMetadata  customMetadata = new Metadata.CustomMetadata();
        customMetadata.fullName = 'MyMetadataTypeName.MyMetadataRecordName';
        Metadata.CustomMetadataValue customField = new Metadata.CustomMetadataValue();
        customField.field = 'customField__c';
        customField.value = 'New value';
        customMetadata.values.add(customField);
        Metadata.DeployContainer deployContainer = new Metadata.DeployContainer();
        deployContainer.addMetadata(customMetadata);
        Id asyncResultId = Metadata.Operations.enqueueDeployment(deployContainer, null);
    }





public class LoginEventMonitoringHandler {
     public static List<LoginEvent> getLoginEvent()
    {
        return [SELECT SourceIP,Country,City,Username FROM LoginEvent where EventDate = Today];
    }

}






@isTest
global class ParkServiceMock implements WebServiceMock{
  global void doInvoke(
    Object stub,
    Object request,
    Map<String, Object> response,
    String endpoint,
    String soapAction,
    String requestName,
    String responseNS,
    String responseNam,
    String responseType,
    ){
    ParkService.byCountryResponse response_x = new ParkService.byCountryResponse();
    response_x.return_x = new List<String>{'Yellowstone','Mackinac National Park','Yosemite'};
    response.put('response_x', response_x); 
    }
}







// ACCOUNT MANAGER

@RestResource(urlMapping = '/Accounts/*/contacts')
global with sharing class AccountManager{
   
      @httpGet
      global static Account getAccount(){
          RestRequest request = RestContext.request;
          String accountId = request.requestURI.substringBetween('/Accounts/','/contacts');
          Account results = [SELECT Id,Name,(SELECT Id,Name FROM Contacts) FROM Account WHERE Id =:accountId LIMIT 1];
          return results;
          
        }
    }
    
        

   // ACCOUNT MANAGER TEST

   @isTest
private class AccountManagerTest{
    @isTest
    static void getAccount_Test(){
    	Id recordId = makeData();
        RestRequest request = new RestRequest();
        request.requestURI = 'https://yourInstance.my.salesforce.com/services/apexrest/Accounts/'
            + recordId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Test Record', thisAccount.Name);
    }
    
    static Id makeData(){
        Account accountRecord = new Account(Name = 'Test Record');
        insert accountRecord;
        
        Contact contactRecord = new Contact(FirstName='John',LastName='Smith',AccountId=accountRecord.Id);
        
        return accountRecord.Id;
    }
}
 