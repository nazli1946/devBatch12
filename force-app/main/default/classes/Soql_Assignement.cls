public class Soql_Assignement {
    public static void soql_WhereClause(){
        List<contact> lstcontact = [SELECT Id, lastName from contact where lastName like '%A%'];
        system.debug('list which has last name contains is ' + lstcontact);
        system.debug('list contact size is ' + lstcontact.size());
    }

     public static void soql_forMethod(){
        List<contact> lstcontact = [SELECT Id, lastName, Phone from contact];
        for(contact eachContact : lstcontact){
            string clastName = eachContact.lastName;
            string cPhoneNumber = eachContact.Phone;
            system.debug(' contact last name is ' +clastName + ' contact phone number is ' + cPhoneNumber);
        }
}
}
