
// ------------- 4/20/2023 -------------------


@isTest
private class CreateChildCaseHandlerTest {
  
  
  @isTest
  static void testHighPriorityCaseNewChildCaseCreation() {

    //Arrange
    List<Case> newCases = TestDataFactory.createCases(3, 'High');
    //Act
    Test.startTest();
    insert newCases;
    Test.stopTest();

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases];
    
    // check the childcases size is 3 :
    // Assert.areEqual(expected,actual);
    Assert.areEqual(3, newChildCases.size());

    for (Case each : newChildCases) {
      Assert.areEqual('High', each.Priority);
      // subject of child is : Child Case for Case #ParentCaseNumberHere'
      String expectedSubject = 'Child Case for Case #' + each.Parent.CaseNumber;
      Assert.areEqual(expectedSubject, each.Subject);
    }
  
  }
  /**
 *  Subject = 'Child Case for Case #' + each.CaseNumber,
    ParentId = each.Id,
    Priority = 'High'
 */

  @isTest
  static void testNotHighPriorityCaseNoNewChildCase() {
    //Arrange
    // create low priority cases
    List<Case> newCases = TestDataFactory.createCases(3, 'Low');
    // create medium priority cases
    List<Case> newCases2 = TestDataFactory.createCases(2, 'Medium');
    // combine them all
    newCases.addAll(newCases2);

    //Act
    Test.startTest();
    insert newCases;
    Test.stopTest();

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases
    ];
    // check the childcases size is 0
    Assert.areEqual(0, newChildCases.size());
  }

   
  
  
  /**
    * Using the Test.loadData method, 
      you can populate data in your test methods without having 
      to write many lines of code.
      Follow these steps:
      Add the data in a .csv file.
      Create a static resource for this file.
      Call Test.loadData within your test method 
      and passing it the sObject type token and the static resource name.
      For example, for Case records and a static resource name of myResource, 
      make the following call:
      List<sObject> ls = Test.loadData(Case.sObjectType, 'myResource');

      The Test.loadData method returns a list of sObjects 
      that correspond to each record inserted.

      REFFERENCE : DOC ===> Loading Test Data
    */
  @isTest
  static void testHighPriorityCaseNewChildCaseCreationCSV_File() {
    // Arrange

    // Test.loadData allow you to load the static resource csv file
    // you have uploaded previously and load that into List of sObject
    List<sObject> newCases = Test.loadData(Case.sObjectType, 'caseData');
    // get me the first case
    // Case first =  (Case) newCases[0];

    //Act
    // Test.startTest();
    // insert newCases ;
    // Test.stopTest() ;

    //Assert
    List<Case> newChildCases = [
      SELECT Subject, ParentId, Priority, Parent.CaseNumber
      FROM Case
      WHERE ParentId IN :newCases
    ];
    // check the childcases size is 10 , because 10 cases in csv file
    Assert.areEqual(10, newChildCases.size());

    for (Case each : newChildCases) {
      Assert.areEqual('High', each.Priority);
      // subject of child is : Child Case for Case #ParentCaseNumberHere'
      String expectedSubject = 'Child Case for Case #' + each.Parent.CaseNumber;
      Assert.areEqual(expectedSubject, each.Subject);
    }
  
  }

  // WE SHOULD NOT RELY ON EXISTING DATA IN THE ORG !!!
  // WORKING WITH EXISTING DATA IN THE ORG WILL CAUSE UNEXPECTED POTENTIAL RESULTS 
  // DO NOT USE UNLESS YOU REALLY REALLY CAN NOT REPLICATE THE DATA YOU NEEDED FOR THE TEST 
  @isTest(SeeAllData = true)
  static void testSeeAllData() {
    // Now we have access to all org data we are connected to
    // lets write a simple query to get all cases
    List<Case> allCases = [SELECT Subject, CaseNumber, Priority FROM Case];

    System.debug('allCases.size() value is : ' + allCases.size() );

  }


}