trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            system.debug('we are in Before update trigger');
            ContactTriggerHandler.updateContactValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.updateContactValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
}
/*
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        system.debug('we are in BEFORE Trigger. Not even Saved.');
        if (Trigger.isInsert) {
            system.debug('we are in Before Insert Trigger');
        } 
        if (Trigger.isUpdate) {
            system.debug('we are in Before update trigger');
        }
    }

    if (Trigger.isAfter) {
        system.debug('we are in AFTER Trigger. SBNC,.');
        if (Trigger.isInsert) {
            system.debug('we are in AFTER Insert Trigger');
        } 
        if (Trigger.isUpdate) {
            system.debug('we are in AFTER update trigger');
        }
    }
}
*/