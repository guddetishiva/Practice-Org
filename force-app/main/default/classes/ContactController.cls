public class ContactController {
    public Project__c con{set;get;}
    
    public ContactController(){
        con = new Project__c();
    }
    
    public pagereference insertProject(){
        
        insert con;
        return new pagereference('/'+con.id);
    }

}