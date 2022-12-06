public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new date instance');
        date newDate = date.newInstance(1995, 2, 17);
        system.debug('new date is ' + newDate);
        date newDate2 = date.newInstance(2021, 10, 7);
        system.debug('new date2 is ' + newDate2);
        Date todayDate = date.today();
        system.debug('today\'s date ' + todayDate);
        


    }
    public void printNewTime(){
        Time myTime = Time.newInstance(2, 15, 45, 55);
        system.debug('my time is ' + myTime);
        Time meTime = Time.newInstance(15, 9, 16, 0);
        system.debug('me time is ' + meTime);
    }
    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = Time.newInstance (2, 15, 45, 55);

        DateTime dt1 = DateTime.newInstance(newDate,newTime);
        system.debug('dt1 ' + dt1);

        Datetime dt2 = Datetime.newInstance(2001, 4, 14);
        system.debug('dt2 is ' + dt2);

}
}
