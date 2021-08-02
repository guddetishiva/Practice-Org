({
    doInit : function(component, event, helper) {
        var action = component.get("c.getrecords");
        action.setParams({"Usid":$A.get("$SObjectType.CurrentUser.Id")});
                     
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.data",response.getReturnValue());
                //console.log('proje data from apex class>>',JSON.stringify(component.get("v.data")));

//alert("Done");
                
                
            }
        });
        $A.enqueueAction(action);
    }
})