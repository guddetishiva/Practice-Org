public class OwnRecords {
    @Auraenabled
    public static List<Project__C> getrecords(id Usid){
        List<Project__c> pr =[select id,name,Deadline__c,Project_cost__c from Project__C where OwnerId =:Usid];
        system.debug(Usid);
        system.debug([select id,name,Deadline__c,Project_cost__c from Project__C where OwnerId =:Usid]);
        return pr;
        
    }

}