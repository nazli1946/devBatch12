public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex labguage';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of string is ' + lengthOfStr); 
}
}