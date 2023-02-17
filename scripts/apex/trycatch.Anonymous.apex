//hata 1
    // account acc = new account();
    // insert acc;

//duzeltilmis sekli
try{
    account acc = new account();
    insert acc;
} catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(Exception e){
    System.debug(e);
    System.debug('hello exeption');
}

//hata 2
    //  list<string> list1;//bu listenin valuesu null
    // string a = list1[0];
    // system.debug(a);

try{
    list<string> list1;//bu listenin valuesu null
    string a = list1[0];
    system.debug(a);
}
catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(NullPointerException npe){
    System.debug(npe);
    System.debug('hello null list exeption');
}
catch(Exception ex){
    System.debug(ex);
    System.debug('hello exeption');
}

// hata 3

    // list<string> list1 = new list<string>();
    // string a = list1[0];
    // system.debug(a);

try{
    list<string> list1 = new list<string>();
    string a = list1[0];
    system.debug(a);
}
catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(NullPointerException npe){
    System.debug(npe);
    System.debug('hello null list exeption');
}
catch(ListException lex){
    System.debug(lex);
    System.debug('hello  list exeption');
}
catch(Exception ex){
    System.debug(ex);
    System.debug('hello exeption');
}