@isTest
private class cloneTest {

@testSetup
Static void preparedata(){
Project__c pro = New Project__c();
    pro.Name='test functioanlity';
    pro.Active__c=true;
    pro.Project_cost__c=10000;
    insert pro;

    List<Expenses__c> explist = New List<Expenses__c>();
    for(integer i=0;i<=20;i++){
        Expenses__c exp = New Expenses__c();
        exp.Name_of_the_Expense__c= 'Test'+i;
        exp.Project_Name__c=pro.Id;
        explist.add(exp);
        
    }
    if(explist.size()>0){
    insert explist;
    }

}
    static testMethod void myTest() {
        // code_block
        Test.startTest();
        Project__c cl=[select id,name from Project__c where Name =  'test functioanlity'];
        newClone.getData(cl.Id);
        Test.stopTest();
       Project__c cloned=[select id,name from Project__c where Name like '%clone%'];
       List<Expenses__c> ex = [select id, Name_of_the_Expense__c from Expenses__C where Project_Name__c=:cloned.Id];
       System.assertEquals('test functioanlityCloned',cloned.Name);
        integer i =0;
        for(Expenses__c e1 : ex){   
        System.assertEquals('Test'+i,e1.Name_of_the_Expense__c);
            i = i+1;
        }    
            
//Start and end test
//System.assertEquals();
    }

}