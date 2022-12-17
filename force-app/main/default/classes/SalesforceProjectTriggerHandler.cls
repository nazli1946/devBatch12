public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        //create one empty list of salesforce project
        List<Salesforce_Ticket__c> stList = new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c eachSP : spTriggerNew){
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'default st';
            st.Salesforce_Project__c = eachSP.Id;
            stList.add(st);
        }
        if(!stList.isEmpty()){
            insert stList;

        }


        
    }
    
}

