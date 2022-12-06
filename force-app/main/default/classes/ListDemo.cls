public  class ListDemo {
    public static string candidatesList(integer i){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Ellon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug(' lit of candidates is ' + listCandidates);
        string returnString = '';
        integer sizeOfList = listCandidates.size();
        if (i>= 0 && i< sizeOfList) {
            returnString = listCandidates[i];
            
        }else {
            returnString = 'No values found. Stay in limits';
        }
        
        return returnString;
    }
    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        integer valueAt3index = listInteger.get(3);
        integer valueAtindex2 = listInteger[3];
        system.debug('random integer lis is  ' + listInteger);
        system.debug('value at index 3 is  ' + valueAt3index);

    }

    public static void allCats(){
        List<cat> listCat = new List<cat>();
        cat bath12Cat = new cat('fluuffy', 'white');
        cat bath12Cat2 = new cat('zuzu', 'black');
        cat bath12Cat3 = new cat('honey', 'yellow');
        listCat.add(bath12Cat);
        listCat.add(bath12Cat2);
        listCat.add(bath12Cat3);
        listCat.add(bath12Cat);
        system.debug('list of cats ' + listCat);


       

    }
}
