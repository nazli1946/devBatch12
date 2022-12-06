//instance of the class = object

car  tesla  =   new car();
tesla.carColor = 'Orange';
tesla.carName = 'Tesla sports ';
tesla.switchOn();
tesla.drive();
tesla.driveAtMaxSpeed();
system.debug('tesla -> ' + tesla);

system.debug('------------');
car bmw = new car();
bmw.carColor = 'White';
bmw.carName = 'Bmw is SUV ';
system.debug('bmw.carcolor  ' + bmw.carColor);
bmw.switchOn();
bmw.drive();
system.debug('bmw --> ' + bmw);


car nissan = new car();
nissan.switchOn();
system.debug('nissan  ' + nissan);