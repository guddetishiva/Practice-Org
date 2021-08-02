trigger ProjectTrigger on Project__c (After Insert, After Update, Before Update) {
    
    /*List<Project__c> prList = new List<Project__c>();
    
    
    if(trigger.IsAfter){
        if(trigger.isInsert || trigger.isUpdate){
            
            if(Repeat.firstTimeCheck()){
                
                
                List<Project__c> pro =[select id, Project_size__c, deadline__c from Project__C where id =:trigger.new];
                system.debug(pro);
                for(Project__c p : Pro){
                    if(p.Project_size__c == 'small'){
                        p.deadline__c =system.today().addDays(30);
                        prList.add(p);
                    }
                }
                for(Project__c p : Pro){
                    if(p.Project_size__c == 'Medium'){
                        p.deadline__c =system.today().addDays(60);
                        prList.add(p);
                    }
                }
                for(Project__c p : Pro){
                    if(p.Project_size__c == 'large'){
                        p.deadline__c =system.today().addDays(90);
                        prList.add(p);
                    }
                }
                
                if(prList.size()>0){
                    update prList;
                }
                
            }
            
        }    
        
    }*/

   //Inserting Premium projects into diamond project
   


}