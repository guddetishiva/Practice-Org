public class getProjectInformation {
    
    @AuraEnabled
    public static List<Project__c> getProjects(string str){
        
         return [select Id,Name,Project_Manager__c,OwnerId,Deadline__c from Project__c where Project_Manager__c='0055g000006aDrEAAU'];
        
        
    }

}