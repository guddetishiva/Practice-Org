({
    handleClick : function(component, event, helper) {
        
        var action = component.get("c.insertAccount");
        action.setParams({"ac":component.get("v.AccountObj")});
        action.setCallback(this, function(data){
            component.set("v.str",data.getReturnValue())
            
        });
       
        $A.enqueueAction(action);
        
    } 
})