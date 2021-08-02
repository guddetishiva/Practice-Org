trigger NoDuplicates on Project__c (Before Insert, After Insert, Before Update, After Update, Before Delete, After Delete, After Undelete) {

   if(trigger.isBefore){
       if(trigger.isInsert){
         TriggerHandlerForProject.checkDuplicate(trigger.new);
         }

}

   if(trigger.isAfter){
      if(trigger.isInsert || trigger.isUpdate){
         DiamondProjectsTriggerHandler.insertDiamondProject(trigger.new);
       
      }
   }

}