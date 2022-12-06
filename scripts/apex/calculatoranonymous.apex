Calculator c1 = new Calculator();
date newDate = date.newInstance(2016,4,8);
boolean year1 = c1.leapYearCheck(newDate);
system.debug(newDate +  'check leap year ' + year1);

integer sum33 = c1.add(10,18,25);
system.debug(sum33);
integer sum1 = c1.add(10,15);
system.debug(sum1);
string r = c1.printAndReturnMessage('print this asap');
system.debug(r);
c1.welcomeMessage();
string message = 'print my message';
c1.printNewMessage(message);
c1.printNewMessage('now print this');


