trigger CaseTrigger on Case (before update) {
    if(trigger.isUpdate){
        system.debug('before update tirgger ran');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug(' # of times trigger ran ' + CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countRecordsUpdate +=trigger.size;
        system.debug(' # of total records updated --->' + CaseTriggerHandler.countRecordsUpdate);

    }

   
}