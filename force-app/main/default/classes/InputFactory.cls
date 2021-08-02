@isTest
public class InputFactory {
    @testSetup
    public static void inputforProject(){
        Project__c pr =new Project__c();
        pr.name = 'Test Data';
        pr.Active__c = true;
        insert pr;
        
        List<Expenses__c> exp = new List<Expenses__c>();
        for(integer i =0; i<4; i++){
            Expenses__C e1 = new Expenses__C();
            e1.Name_of_the_Expense__c = 'clone'+i;
            e1.Project_Name__c = pr.id;
            exp.add(e1);
       
         
    }
    insert exp;

}
}