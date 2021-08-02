public class CreateAccount {
@AuraEnabled
    public static id insertAccount(Account ac){
        
        ac.Name ='New Account from Aura';
       
        insert ac;
        system.debug('I am From Apex');
        return ac.id;
    }
}