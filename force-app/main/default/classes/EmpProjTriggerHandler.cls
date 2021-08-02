public class EmpProjTriggerHandler {
    
    public static void chcekTheIsActive(List<Emp_Project__c> empproj){
        set<Id> ConId =new set<Id>();
        List<Contact> NewList = new List<Contact>();
        for(Emp_Project__c pro :empproj){
            ConId.add(pro.Employyee__c);
        }
        List<Contact> NewCon =[Select id,isAllocated__c from Contact where id =:ConID ];  
        if(newCon.size()>0){
            for(Contact c: NewCon){
                if(c.isAllocated__c ==false){
                    c.isAllocated__c = true;
                    NewList.add(c);
                }
            }    
            if(NewList.size()>0){
                update NewList;
            }
            
        }                
        
        
    }
    public static void checkAllocation(List<Emp_Project__c> empproj){
        set<Id> ConId =new set<Id>();
        for(Emp_Project__c ep : empproj){
            ConId.add(ep.Employyee__c);
        }
        List<aggregateResult> totalAll = [select Employyee__c,sum(Work_load__c)total from Emp_Project__c where Employyee__c =:ConId group by Employyee__c];
        map<id,Decimal> eMap = new map<id,Decimal>();
        
        for(aggregateResult r : totalAll){
            system.debug(r.Id);
            System.debug(totalAll);
            
            
            eMap.put((id)r.get('Employyee__c'), (Decimal)r.get('total'));
            
            system.debug(eMap);
            
        }
        
        for(Emp_Project__c e : empproj){
            
            if(eMap.containsKey(e.Employyee__c)){
                system.debug(e.Employyee__c);
                Integer I = Integer.valueOf(eMap.get(e.Employyee__c));
                //Integer I = Integer.valueOf(str);
                
                system.debug(I);
                
                if(I>100){
                    
                    I = I-100;
                    system.debug(I);
                    e.addError(' You are allocating' +I+'%  More Than Allowed allocation.  Please reduce by  '+I+'% ');
                }
            }
        }
    }
    
}