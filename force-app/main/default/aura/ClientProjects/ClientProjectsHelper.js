({
	fetchData : function(component, event, helper) {
          component.set("v.ClientName",component.get("v.recordId"));
		  var action = component.get("c.getClientProjects");
           
        action.setParams({"ProID":component.get("v.recordId")});
      
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.data", response.getReturnValue());
                component.set("v.ClientName", response.getReturnValue('client_name__r.name'));
              
            }
        });
        $A.enqueueAction(action);
    }
	
})