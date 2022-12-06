public class PrimitiveDataTypeDemo3 {
    public void printNewDateType(){
        DateTime dt3 = datetime.newInstance(2021,7,8,9,10,11);
        system.debug('dt3 is '+ dt3);   

        DateTime dt4 = datetime.newInstance(0);
        system.debug('dt4 => ' + dt4);
        DateTime dt4_1 = datetime.newInstance(300000);
        system.debug('dt 4.1 => '+ dt4_1);
        long longTime = 14532446547451l;
        DateTime dt4_2 = datetime.newInstance(longTime);
        system.debug('dt 4.2 => '+ dt4_2);
        DateTime dt5 = datetime.newInstanceGMT(1998, 5, 24, 5, 8, 10);
        system.debug('dt5  is ' + dt5);
        DateTime dt6 = datetime.now();
        system.debug('dt6 is ' + dt6);     
    }
}
