@isTest
public class CloneTest2 {
    @testSetup
    static void prepdata(){
        InputFactory.inputforProject();
    }
static testMethod void myTest(){
    Test.startTest();
    Project__c pr = [Select id, name from Project__c where name = 'school'];
    newClone.getData(pr.id);
    Project__c cloned = [select id, name from Project__c where name like '%cloned%'];
    Test.stopTest();
    System.assertEquals('Test DataCloned', cloned.name);
    }
}