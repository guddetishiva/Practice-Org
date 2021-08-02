public class ProjShareTriggerHandler {
    
    public static void shareProject(List<isue__C> isu){
       
        List<Project__Share> PrShare = new List<Project__share>();
        for(isue__c i : isu){
            Project__Share s = new Project__share();
            s.ParentId = i.Project__c;
            s.UserOrGroupId = i.Assignee__c;
            s.AccessLevel = 'Read';
            s.RowCause = 'Manual';
            PrShare.add(s);
        }
        if(PrShare.size()>0){
            insert PrShare;
            System.debug(PrShare);
        }
    }
    
}