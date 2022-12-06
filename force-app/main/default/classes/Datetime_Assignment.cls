public  class Datetime_Assignment {
    public void diffoDate(){
        Date varTodayDate = date.newInstance(2022, 11, 27);
        System.debug('today date is ' + varTodayDate);
        Date varTomorrowDate = date.newInstance(2022, 11, 28);
        System.debug('tomorrow date is ' + varTomorrowDate);
        integer differDate = varTodayDate.daysBetween(varTomorrowDate);
        system.debug('difference between today and tomorrow date is ' + differDate);
     
    }
    public void timeCheck(){
        datetime varTomorrowDateTime = datetime.newInstance(2022,11,28, 7,0,0);
        system.debug('tomorrow date time -->' + varTomorrowDateTime);
        datetime var10DaysDatetime = datetime.newInstanceGmt(2022, 12, 8, 9,0,0);
        System.debug('10 days later date time ' + var10DaysDatetime); 
        Long varDatetimeLong = 12339874361l;
        datetime longDate = datetime.newInstance(varDatetimeLong);
        system.debug(' long date time is ' + longDate);

        datetime add7DaysTomorrow = varTomorrowDateTime.addDays(7);
        system.debug('7 days later is ' + add7DaysTomorrow);

        datetime add10DaysDatetime = var10DaysDatetime.addDays(10);
        system.debug('10 days today date is ' + add10DaysDatetime);
    }
   
}
