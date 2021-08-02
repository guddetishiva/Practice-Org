({
	init : function(component, event, helper) {
		  component.set('v.columns', [
            {label: 'Project Name', fieldName: 'Name', type: 'text'},
                {label: 'Deadline', fieldName: 'Deadline__c', type: 'date'},
                {label: 'Project Cost', fieldName: 'Project_cost__c', type: 'Integer'}
            ]);
         helper.fetchData(component, event, helper);
	}
})