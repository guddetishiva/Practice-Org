public class ClientProject {
    @AuraEnabled
    public static list<Project__c> getClientProjects(id ProID){
        List<Project__c> Prlist =[select name, Deadline__c,Project_cost__c, client_name__r.name from project__c where client_name__c =:ProID];
        return PrList;
    } 

}