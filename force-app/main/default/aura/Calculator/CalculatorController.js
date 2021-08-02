({
    add : function(component, event, helper) {
        var fn = component.get("v.fnumber");
        var sn = component.get("v.snumber");
        component.set("v.results", fn+sn);
 
    },
    sub: function(component, event, helper){
          var fn = component.get("v.fnumber");
        var sn = component.get("v.snumber");
        component.set("v.results", fn-sn);
        
    },
    mul: function(component, event, helper){
          var fn = component.get("v.fnumber");
        var sn = component.get("v.snumber");
        component.set("v.results", fn*sn);
        
    },
    div: function(component, event, helper){
          var fn = component.get("v.fnumber");
        var sn = component.get("v.snumber");
        component.set("v.results", fn/sn);
        
    }
    
    
})