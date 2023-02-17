public class AccountQueueableExample implements Queueable{
    List<account> listAcc = new list<account>();
    //constructor
    public AccountQueueableExample(List<account> accounts){
        listAcc = accounts;
    }
    public void execute(QueueableContext qc){
        List<account> updateAccs = new List<account>();
        for (account eachAcc : listAcc) {
            Account a = new Account();
            a.Id = eachAcc.Id;
            a.Name= eachAcc.Name +  ' -- SI';
            updateAccs.add(a);
        }
        update updateAccs;
    }
}