@isTest
private class TestClassForDuplicateProject {
    static testmethod void checkMethod(){
        
       Test.startTest();
        Project__c p =new Project__c();
        p.name ='Shiva Guddeti';
        insert p;
        
        Project__c p1 =new Project__c();
        p1.name ='Shiva Guddeti';
        try{
        insert p1;
        }
        catch(Exception e){
            System.debug('Error Happened as expected ');
        }
     
        List<Project__C> p3 = [select name from Project__C where name ='Shiva Guddeti'];
        system.assertEquals(1, Integer.valueOf(p3.size()));
         Test.stopTest();  
    }
}