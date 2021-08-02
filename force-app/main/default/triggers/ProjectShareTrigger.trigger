trigger ProjectShareTrigger on isue__c (After Insert, After Update) {
ProjShareTriggerHandler.shareProject(trigger.new);

}