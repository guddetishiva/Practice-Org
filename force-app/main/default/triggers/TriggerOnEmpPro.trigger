trigger TriggerOnEmpPro on Emp_Project__c (After Update, After Insert, Before Insert, Before Update) {
    EmpProjTriggerHandler.chcekTheIsActive(trigger.new);
    if(trigger.isAfter ){
        if(trigger.isInsert || trigger.isUpdate)
    EmpProjTriggerHandler.checkAllocation(trigger.new);
    }

}