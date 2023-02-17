
public  class Queuable122 implements Queueable{

    public List<Account> accList = [select id, name,(select id, LeadSource from contacts) from account where AnnualRevenue = 10000];

    public void execute(QueueableContext contex){
        system.debug('Queuable122 calisti');
        List<contact> conList = new List<contact>();
        for(account ac : accList){
            conList.addAll(ac.Contacts);
        }
        for(contact cn : conList){
            cn.LeadSource = 'Partner Referral';
        }
        update conList;
        system.enqueueJob(new Queuable123());
    }
   
}
