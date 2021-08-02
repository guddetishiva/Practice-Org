public class ExtController {
    
    String str;
    List<Project__C> result;
    Private final Project__C pr;
    
    public ExtController(ApexPages.StandardController stdController){
        this.pr =(Project__C)stdController.getRecord();
    }
  
    public String getStr(){
        
        return str;
    }
    public void setStr(String s){
        str =s;
    }
    public List<Project__C> getresult(){
        return result;
    }
    public pageReference Search12(){
        
        result = (List<Project__C>)[FIND :str returning Project__C(name,Deadline__C,total_budget__C)][0];
        return null;
    }
    

}