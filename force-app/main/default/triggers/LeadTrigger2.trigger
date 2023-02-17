trigger LeadTrigger2 on Lead (after insert) {
    system.debug('lead saved by now after insert trigger');

}