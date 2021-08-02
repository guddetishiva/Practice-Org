global class DiamondProjectBatchJob implements Database.Batchable<SObject>{
    List<Project__c> pr = new List<Project__c>();
    global DiamondProjectBatchJob(List<Project__C> pr1){
       pr = pr1; 
    }
    global List<SObject> start(database.BatchableContext bc){
        return pr;
    }
    
    global void execute(database.BatchableContext bc, List<Project__c> Proj){
        
        List<Diamond_Projects__c> dp = new List<Diamond_Projects__c>();
        for(Project__c p : Proj){
            Diamond_Projects__c d =new Diamond_Projects__c();
            d.name = p.name;
            d.Email__c = p.Email_Id__c;
            d.Status__c =p.Status__C;
            d.Start_Date__C =p.Start_Date__C;
            d.client__c =p.client_name__c;
            d.DeadLine__C = p.Deadline__c;
            d.Project_cost__c =p.Project_cost__c;
            dp.add(d);
        }
        if(dp.size()>0){
            insert dp;
        }
    }
    global void finish(database.BatchableContext bc){
        system.debug('Process Done');
    }

}