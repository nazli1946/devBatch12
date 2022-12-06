list<string> listStr = new list<string>();
if (listStr.isEmpty()){
    system.debug('List is empty.come on.');
}

listStr.add('some string');
boolean listIsEmpty = listStr.isEmpty();
if(!listStr.isEmpty()){
    system.debug ('list is not empty');
}
list<string> listStr2 = new list<string>();
listStr2.add('will this work?');

List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('before sort + list' + listInteger);
        listInteger.sort();
        system.debug('after sort + list' + listInteger);



