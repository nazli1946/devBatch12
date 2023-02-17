public with sharing class OpportunityTriggerHandler {
    //A
    @future
    public static void updateHighestAmountOpportunityName(Set<Id> accIds) {
        List<Account> accList = [select id, name, highest_amount_opportunity_name__c, (select id, name, amount from opportunities order by amount desc nulls last) from account where id in :accIds];
        for (Account eachAcc : accList){
            eachAcc.Highest_Amount_Opportunity_Name__c = eachAcc.Opportunities[0].Name;
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}