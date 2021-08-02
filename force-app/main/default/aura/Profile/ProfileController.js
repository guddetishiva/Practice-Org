({
	handleClick : function(component, event, helper) {
       //var str =component.find("ide").get("v.value");
      var phone1 = component.get("v.Phone");
        component.set("v.name",phone1);
		
	}
})