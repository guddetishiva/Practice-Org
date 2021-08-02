public with sharing class CreateAccounts {
    @AuraEnabled(cacheable =true)
    public static List<Account> getRecords(){
        return [select id,name from Account Limit 5];
        
    }
}
