public  class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');

        system.debug('cities are ' + cities);
        
    }
    public static void randomIntegerSet(){
        set<integer>integerSet = new set<integer>();
        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);
        system.debug('integer set ' + integerSet);

    }

    public static set<integer> setFromList(list<integer> intList){
        set<integer> inSet = new set<integer>();
        inSet.addAll(intList);
        return inSet;


    }
    public static set<string> upperCaseSet(set<string> setStr){
        set<string> returnSet = new set<string>();

        for (string eachStr : setStr){
            string tempStr = eachStr.toUpperCase();
            returnSet.add(tempStr);

        }

        return returnSet;
    }
}
