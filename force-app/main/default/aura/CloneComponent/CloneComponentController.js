({
    handleClick : function(component, event, helper) {
       
        var action = component.get("c.getData"); 
        action.setParams({ ProID :component.get("v.recordId") }); 
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                alert("Clone Completed");
                
            }else
            {
                alert("Failed");
            }
        });
        $A.enqueueAction(action);
    }
})