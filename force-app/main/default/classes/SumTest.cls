@isTest
public class SumTest {
    private static testmethod void testing(){
        
       test.startTest();
        integer a =10;
        integer b =10;
        integer result = Sum.add(a,b);
        test.stopTest();
        system.assertEquals(20,result);

    }
}