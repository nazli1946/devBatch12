public class BatchDeleteOpp implements database.Batchable<sObject>, database.stateful{
    public integer count = 0;

    public Database.QueryLocator start (Database.BatchableContext bc){
        database.QueryLocator q1 = Database.getQueryLocator([select id, name, stageName from Opportunity where StageName = 'Closed Lost']);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        count += scope.size();
        if(scope.size()>0){
            delete scope; 
        }
        
    }
    public void finish (Database.BatchableContext bc){
        system.debug('Total number if opp records deleted ' + count);
    }
    
}
   