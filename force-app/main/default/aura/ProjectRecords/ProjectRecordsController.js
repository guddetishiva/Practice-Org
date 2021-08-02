({
    
    doInit : function(component, event, helper) {
        
        var action = component.get("c.getProjects"); //defining serverside method
        action.setParams({ userid : "0055g000006aDrEAAU" }); //passing parameters to apex class methods
        
     
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                
                component.set("v.projData",response.getReturnValue());
                component.set("v.userid","Hello World");
                alert("V.projData");
            }
        });
    }
});