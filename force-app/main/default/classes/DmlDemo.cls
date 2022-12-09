public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //we will create account record using Apex.
        //1. create new instance.
        Account acc = new account();

        //2. set field values
        acc.Name = 'SoftInnovas';
        
        //dml
        insert acc;
        system.debug('inserted acc: ' + acc);
    }
    public static void dmlInsertDemo_cstmObj() {
        //1. create new instance
        Salesforce_project__c spNew = new salesforce_project__c();
        //set field values
        spNew.project_name__c = 'Teach DML to Batch12';
        spNew.description__c = 'All of you doing great.';
        

        //3.  dml (insert)
        insert spNew;
    }

    public static void dmlUpdateDemo_1() {

        Account acc = new account();
        acc.Name = 'SoftInnovas';

        insert acc;

        acc.Name = 'Salesforce Inc.'; 
        update acc; 

    }
    public  static void dmlUpdateDemo_3() {
        Account acc = [select id, name from account where name = 'softinnovas' limit 1];

        acc.Name = 'SoftInnovas Inc '; 
        update acc;
        system.debug(' acc=> ' + acc);

        
    }
    public static void dmlInsertDemo_4() {
        Account acc = [select id from account where name = 'SoftInnovas Inc.' limit 1];
        
        Contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;
        insert cnt;
        system.debug('cnt -> ' + cnt);
        
    }
    public static void dmlInsertDemo_5() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];
        salesforce_ticket__c st = new Salesforce_Ticket__c();

        st.Subject__c = 'Learn apex dml';
        st.Priority__c = 'high';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.today();

        st.Salesforce_Project__c = sp.id;
        insert st;

        system.debug('salesforce ticket' + st);


        
    }
    public static void dmlMultipleRecordInsert_right() {
        List<account> listAcc = new List<account>();

        account acc1 = new account();

        acc1.name = 'acc bulk 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc bulk 2';
        listAcc.add(acc2);


        account acc3 = new account();
        acc3.name = 'acc bulk 3';
        listAcc.add(acc3);

        insert listAcc;

        system.debug(' new accounts are ' + listAcc);

        
    }
    public static void dmlInsertmultiple_right2() {
        List<account> listAcc = new List<account>();
        for(integer i=0; i<155; i++){
            account acc = new account();
            acc.Name = 'SoftInnovas v' + i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }
        if(!listAcc.isEmpty()){
            insert listAcc;
            
        }




        
    }
    public static void dmlMultipleRecordUpdate_right() {
        List<Account> listAcc = [select id, name, Active__c from account];
        List<Account> updateAccounts = new list<Account>(); 

        for(Account acc: listAcc){
            if(acc.Active__c== 'yes'){
                acc.Name += 'via B.O';
                updateAccounts.add(acc);
            }


        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }

    }
  
}


    