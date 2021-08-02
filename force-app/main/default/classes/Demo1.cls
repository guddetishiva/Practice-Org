public class Demo1 {
    public String str1;
    public static  string static_string;
    
	static{
        static_string = 'Static Hello World';
        
    }
    public Demo1(String  Str2){
        str1 = str2;
    }
    public Demo1(){
        str1 = static_string;
        
    }
    public void printString(){
        
        System.debug(str1);
        
    }
}