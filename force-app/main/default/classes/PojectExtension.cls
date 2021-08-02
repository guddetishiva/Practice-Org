public class PojectExtension {

    public List<Project__c> proList {set;get;}
    public PojectExtension(ContactController controller){
        proList =new List<Project__C>();
        proList =[select name, Project_cost__c,Deadline__C from Project__C];
    }
    
}