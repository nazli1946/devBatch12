map< string, string> mapCnCurrency = new map<string, string>();
mapCnCurrency.put('USA', 'Dollar');
mapCnCurrency.put('France', 'Euro');
mapCnCurrency.put('Germany', 'Euro');
mapCnCurrency.put('Japan', 'Yen');
mapCnCurrency.put('India', 'Rupees');
mapCnCurrency.put('India', 'Rs');
mapCnCurrency.put('India', 'Rupee');
mapCnCurrency.put('Turkey', 'Lira');
mapCnCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and currency ' + mapCnCurrency);

string IndiaCurrency = mapCnCurrency.get('India');
system.debug('India currency is '  + IndiaCurrency);
string country = 'Japan';
string countryCurrency = mapCnCurrency.get(country);
system.debug(country + ' currency is  ' + countryCurrency);


Set<string> countrySet = mapCnCurrency.keySet();
system.DEBUG('SET OF COUNTRY IS ' + countrySet);

//values () return 
List<string> currencyList = mapCnCurrency.values(); 
system.debug('currency list is ' + currencyList);

Set<string> countries = mapCnCurrency.keySet();
for(string eachCountry: countries){
    system.debug(' * each country is ' + eachCountry);
    string eachCurrency = mapCnCurrency.get(eachCountry);
    system.debug(' ** each currency is ' + eachCurrency);
    system.debug(' ---> country is ' + eachCountry + ' it is currency is ' + eachCurrency);


}
    
