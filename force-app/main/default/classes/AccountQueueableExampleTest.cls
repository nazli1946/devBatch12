@istest 
public  class AccountQueueableExampleTest {
    @isTest  
    private static void namtestBatch1() {
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.name = 'Pi test ' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        Test.startTest();
        //AccountQueueableExample aq = new AccountQueueableExample(listAcc);
        system.enqueueJob(new AccountQueueableExample(listAcc));
        test.stopTest();

        List<account> getAccount = [select id, name from account];
        system.assert(getAccount[0].Name.contains(' -- SI'));
        
    }
    
}
