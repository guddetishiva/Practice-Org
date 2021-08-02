public class CallByValue {
    Account a = new Account();
   integer x = 5;
    public void print(){
        
        System.debug(' Before Call X = '+ x);
        callByValue1(x);
        System.debug('X value After Call By Value ' + x);
    }
    public void callByValue1(integer x){
         x = x+10;
              
    }
    public void print1(){
        
        a.Name = 'Java';
        a.Website = 'www.salesforc.com';
        System.debug('Before Call By Reference Website '+ a);
        CallByReference(a);
        System.debug('AfterCall By Reference Website '+ a);
    }      
    
    public void CallByReference(Account b ){
        b.Website = 'www.google.com';
    }
    

}