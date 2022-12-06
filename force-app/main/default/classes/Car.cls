public class Car {
    public string carColor = '';
    public string carName;

     //if we don't write access modifier dafault is private.
    private integer maxSpeed = 150;
    public void switchOn(){
        datetime switchOnTime = datetime.now();
        system.debug('starting the car');
    }
    public void drive(){
        system.debug('driving ' + carName + 'color is ' + carColor);

    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName + 'at ' + maxSpeed + 'km/h';
        system.debug(drivingDescription);
    }
}