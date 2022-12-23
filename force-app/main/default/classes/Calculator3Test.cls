@isTest
public class Calculator3Test {
    public static void aNormalMethod() {
        system.debug('this is still allowed');
        
    }
   //1.static
   //2. void
   //3. no parameters
   //4. test method can be public ot private
   @isTest
   public static void testMessage() {

    Calculator3 c = new Calculator3();
    c.welcomeMessage();
    c.printNewMessage('printing from test method now');  
   }
   @isTest
   public static void testAdd1() {
    Calculator3 c = new Calculator3();
    integer sum1 = c.add(10, 15); 
    //we have NOT yet verified it.
    //as per our human calculation -> sum1 =>25 
    //assertion 
    system.assertEquals(25, sum1);
   }
   @isTest
   public static void testAdd2() {
    Calculator3 c = new Calculator3();
    integer sum1 = c.add(10, 15, 25); 
    system.assertEquals(50, sum1);  
   }
}

