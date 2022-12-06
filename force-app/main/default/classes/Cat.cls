public with sharing class Cat {
    public string name;
    public string color;

    public static integer countCat = 0;
     

    // 1. what is the name of constructor ? cat same as class name
    // 2. what is return name, no return name //does not return anything.
    public Cat() {
        system.debug('cat constructor called.');
        countcat++;


    }
    public Cat (string n, string clr){
        name = n;
        color = clr;
        countCat++;
        sleeping();
    }
    public void sleeping(){
        system.debug(name + ' isss sleeping');
    }
    
}
