trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('record in after insert : ' + trigger.new);
    }

 
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account Before Insert trigger called.');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account After Insert trigggger called. yeah');
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account Before Update trigger called.');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account After Update trigggger called. yeah');
    }
    */

    /*
    //when we insert record - trigger.isinsert will be true.
    if (Trigger.isInsert) {
        system.debug('account before insert trigger called');    
    }
    //when we update record - trigger.isUpdate will be true.
    if (Trigger.isUpdate) {
        system.debug('account before update trigger called');    
    }*/


    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
    
    
}