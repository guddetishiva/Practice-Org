@isTest
private class TestDiamondProject {
    
    /*@testSetup 
    static void testDataFactory(){
        
      
    }*/
 
    static  testMethod void checkMethod(){
        //List<Project__c> pr1 = [select name,Status__C,Start_Date__C,client_name__c,Project_cost__c,Deadline__c,Email_id__c from Project__c where name like '%Test Project%'];
        
        Test.startTest();
        List<Project__c> pro = new list<Project__c>();  
        for(integer i =0; i<5 ; i++){
            project__c p = new Project__c();
            p.Name = 'Test Project'+i;
            p.Project_cost__c = 12000000+i;
            p.Deadline__c = system.today();
            pro.add(p);
        }
       
        insert pro;
        //DiamondProjectsTriggerHandler.insertDiamondProject(pr1);
        Test.stopTest();
        List<Diamond_Projects__c> dp = [select name,Project_cost__c,Deadline__c from Diamond_Projects__c where name like '%Test Project%'];
        integer i=0;
         for(Diamond_Projects__c d: dp){
            system.debug(d.name);
           
        }  
        for(Diamond_Projects__c d: dp){
            system.assertEquals('Test Project'+i, d.name);
            i = i+1;
        }    
    }
}