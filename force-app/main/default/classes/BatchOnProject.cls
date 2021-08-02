global class BatchOnProject implements Database.Batchable<SObject>, schedulable {
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        //system.debug('I am in start');
        return Database.getQueryLocator([select id, name, IsPremium__c from Project__c where Project_cost__c > 5000000]);
    }
    
    global void execute(Database.BatchableContext bc, List<Project__c> Pro){
        List<Project__c> PList = new List<Project__c>();
        if(Pro.size()>0){
            for(Project__c p : Pro){
                p.isPremium__c = true;
                PList.add(p);
            }
        }    
        if(Plist.size()>0){
            update PList;
        }
        //system.debug('I am in execute');
    }
    
    global void finish(database.BatchableContext bc){
        system.debug('Process Done');
    }
    
    global void execute(schedulableContext sc){
        BatchOnProject newList = new BatchOnProject();
        Database.executeBatch(newList);
    }
}