public  class DatetimeMethodsDemo {
   public void calculateAgeInMonths(){
    date birthDate = date.newInstance(1981,04,03);

    date todayDate = date.today();
    integer ageInMonths = birthDate.monthsBetween(todayDate);
    System.debug(' Seyma age is in months is ' + ageInMonths);
    }

    public void calculateAgeInDays(){
        date birthDate = date.newInstance(1981,04,03);
        date todayDate = date.today();
        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('Seyma age is in days ' + ageInDays);
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(999);
        system.debug('subscription end date is ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('end date year is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('end date month is  ' + endDateMonth); 

        date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
        system.debug('if subc. eneded today, then it started on ' + pastSubscriptionDate);
    }
    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();
        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer end soon ' + dtOfferEnd);
        }
        public void birthdateInMilliSecond(){
            Datetime birthTime = datetime.newInstance(1981,04,03, 7,30,0);

            long longBirthdate = birthTime.getTime();
            system.debug('my birtday is in long (milisecond) is ' + longBirthdate);
        }
}

