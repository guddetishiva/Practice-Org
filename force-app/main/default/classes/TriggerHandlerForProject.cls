public class TriggerHandlerForProject {
    
    public static void checkDuplicate(List<Project__C> Proj){
        set<String> str =new set<String>();
        for(Project__C p: Proj){
            str.add(p.name);
        }
        List<AggregateResult> ag = [select name, count(id)ct from Project__C where name =:str group by name having count(id) >= 1];
        if(ag.size()>0){
            Map<string,integer> DupMap = new Map<string,integer>();
            for(AggregateResult a :ag){
                DupMap.put(string.valueOf(a.get('name')),Integer.valueOf(a.get('ct')));
                
            }
            for(Project__C p : Proj){
                if(DupMap.containsKey(p.name)){
                    p.addError(p.name + 'Already exist.. Duplicates are not allowed');
                }
            }
            
        }
    }   
}