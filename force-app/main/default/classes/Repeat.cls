public class Repeat {
    private static boolean r =true;
    public static boolean firstTimeCheck(){
        if(r){
            r=false;
            return true;
        }else{
            return r;
        }
    }
}