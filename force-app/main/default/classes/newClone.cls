global class newClone {
    @Auraenabled
    public static void getData(ID ProID){
        system.debug(ProID);
        Project__c pr = [SELECT Id, Name, Expected_Duration__c, Approval_Status_by_Manager__c, Status__c, Deadline__c, Start_Date__c, Project_cost__c, client_name__c, Last_Updated__c, Status_Flag__c, Email_Id__c, Paid_Amount__c, Total_Expenses__c, Total__c, Project_Manager__c, Active__c, Total_Budget__c FROM Project__c Where id=: ProID];
        Project__c prc = pr.clone(false,false,false,false);
        prc.name = pr.name + 'Cloned';
        
        database.insert (prc);
        
        List<expenses__c> exp= [SELECT Id, Name, Amount__c, Description__c, Remaining_Budget__c, Name_of_the_Expense__c FROM expenses__c where Project_Name__c =: ProID];
        List<expenses__c> exupdate =new List<expenses__c>(); 
        //try{
            for(expenses__C e1 : exp){
                expenses__C temp = new expenses__c();
                temp = e1.clone(false,false,false,false);
                temp.Project_Name__c = prc.Id;
                exupdate.add(temp);                                
            //}
            insert (exupdate);
        //}catch(Exception e){
            //System.debug('The following error occured'+e);
        }
    }
}