public with sharing class CaseInvocable {
    
    @invocableMethod(label='Send Email & Save Activity'
    description='Thos method sends an email and saves the same as activity'
    category='Case')
    public static void saveEmailSaveActivity(list<InputRequest> inputs) {
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        //iterate over the inputs and create an email for each
        for (InputRequest input : inputs) {
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('Case Created; ' + input.caseNumber);
            msg.setPlainTextBody('A case has been created for your query. Please quote the case number available in the subject when you talk to customer care!');
            msg.setTargetObjectId(input.contactId);
            msg.setSaveAsActivity(true);
            msgs.add(msg);


            
        }
        if(!msgs.isEmpty()){
            Messaging.sendEmail(msgs);
        }
        
    }
   
    public class InputRequest{
        @InvocableVariable(label='Contact ID' description= 'Contact ID' required= true)
        public Id contactId;

        @InvocableVariable(label='Contact ID' description= 'Contact ID' required= true)
        public string caseNumber;
    }
}
