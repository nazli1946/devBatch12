public class BatchCaseCreateTask implements database.Batchable<sObject>,Schedulable{
    Public void execute (SchedulableContext sc){
        BatchCaseCreateTask bc = new BatchCaseCreateTask();
        database.executeBatch(bc);
}
    public Database.QueryLocator start(Database.BatchableContext bc){
       string query = '';
       if(Test.isRunningTest()){
        query ='select id, status,ownerId, origin from Case where  status !=\'Closed\'';
       }else{
        query = 'select id, status,ownerId, origin from Case where LastModifiedDate < LAST_N_DAYS:5 AND status !=\'Closed\'';
       }
        database.QueryLocator q1 = Database.getQueryLocator(query);
        return q1;
    }
    public void execute(Database.BatchableContext bc, list<Case> scope){
        List<Task> LstTask = new List<Task>();
        for(Case eachCase: scope){
            Task Tsk = new Task();
            Tsk.WhatId =eachCase.Id;
            Tsk.Subject = system.label.TaskSubject;
            Tsk.ActivityDate =date.today().adddays(2);
            Tsk.Description = system.label.TaskComment;
            Tsk.OwnerId = eachCase.OwnerId;
            Tsk.Status = 'In Progress';
         LstTask.add(Tsk);
        }
            If(!LstTask.isEmpty()){
                insert LstTask;
            }
        }
    public void finish(Database.BatchableContext bc){
        system.debug('Tasks are created' );
    }
}