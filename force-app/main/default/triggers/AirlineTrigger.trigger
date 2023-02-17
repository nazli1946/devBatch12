trigger AirlineTrigger on Airline__c (after insert) {
    if(trigger.isAfter){
        if(Trigger.isInsert){
            AirlineHandler.afterInsert(Trigger.newMap);


        }
    }

}