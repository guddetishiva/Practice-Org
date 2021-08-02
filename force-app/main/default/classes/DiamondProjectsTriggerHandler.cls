public class DiamondProjectsTriggerHandler {
    
    
    public static void insertDiamondProject(List<Project__C> Proj){
        List<Project__c> PrLi =new list<Project__c>();
        for(Project__c pr : Proj){
            if(pr.Project_cost__c >1000000){
                PrLi.add(pr);
            }
        }
        if(PrLi.size()>0){
            database.executeBatch(new DiamondProjectBatchJob(PrLi),10);
      
        }
        
    }

}