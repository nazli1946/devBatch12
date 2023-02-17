public  class SalesforceProjectUpdate {
    @invocableMethod
    public static void updateStatus (list <id> ticketId) {
        List<salesforce_ticket__c> listUpdate = new List<salesforce_ticket__c>();
        for(Salesforce_Ticket__c eachTicket : [select Id, Status__c from Salesforce_Ticket__c where Salesforce_Project__c in :ticketId ]){
            eachTicket.Status__c = 'Completed';
            listUpdate.add(eachTicket);

        }

        update listUpdate;


    
        
    }
    
}
