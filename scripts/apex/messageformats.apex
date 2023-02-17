//json javaScript Object Notation

//1 student Single Record
{
    "Name" : "Bala",
    "Age" : 35,
    "Title" : "Developer",
    "Salary": 2500.50
}

//2 students details in JSON format
[
    {
        "Name" : "Vitap",
        "Age" : 45,
        "Title" : "Archtitect",
        "Salary": 5500.50

    },
    {
        "Name" : "Yasin",
        "Age" : 35,
        "Title" : "Principal Architect",
        "Salary": 4500.50

    }
]
//Get an account record and covert the same into JSON format 

 
 Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null AND Type != null AND Industry != null  LIMIT 1 ];
String jsonString = JSON.serialize(acc);
system.debug(jsonString);

//Get 4 accounts and covert the same into JSON format
List<Account> accounts = [Select Name, Type, Industry,AnnualRevenue FROM Account WHERE AnnualRevenue != null AND Type != null AND Industry != null  LIMIT 4];
String jsonString = JSON.serialize(accounts);
system.debug(jsonString);





//Callout Test 
RestCallouts.getAnimals();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
RestCallouts.getCasesUsingNC();
RestCallouts.postAnimal();

//Solution Design 
1.Flow => Invocable Apex => Future Method(Callout) 
2.Trigger =>Future Method(Callout) 

