public  class Queuable123 implements Queueable {
    public List<Account> listAcc = [select id, name, (select id from Contacts where LeadSource='Partner Referal') from account where AnnualRevenue=10000];

    public void execute(QueueableContext contex){
        system.debug('Queuable123 calisti...');
        List<Contact> conList = new List<Contact>();
        for(account acc: listAcc){
            conList.addAll(acc.Contacts);
        }
        for(contact c : conList){
            c.Description= 'Queuable chain';
        }
        update conList;
        
    }

   
}
