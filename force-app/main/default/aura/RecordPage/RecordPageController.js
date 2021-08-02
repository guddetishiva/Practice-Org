({
	handleClick : function(component, event, helper) {
        component.set("v.name",component.find("nameID").get("v.value"));
		component.set("v.phone",component.find("phoneId").get("v.value"));
	}
})