@isTest  
public  class sf_assgTest {
    @isTest  
    private static void  insertsfTest () {
        test.startTest();
        sf_assg.insertsf();
        test.stopTest();

        List<Salesforce_Project__c> splist =[select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone23'];

        system.assertEquals(10, splist.size());
    }

    @isTest 
    private static void  updatesfTest() {

        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = ' Iphone';
        insert sp; 
        
        test.startTest();
        sf_assg.updatesf();
        test.stopTest();

        List<Salesforce_Project__c> uplist = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Phone2' ];

        system.assertEquals('Phone2', uplist[0].Project_Name__c );
        
    }
}
       
