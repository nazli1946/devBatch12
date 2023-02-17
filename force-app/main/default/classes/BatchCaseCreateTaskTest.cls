@isTest 
public with sharing class BatchCaseCreateTaskTest {
    @isTest
    public static void BatchCaseCreateTaskTest1() {
        list<Case> lstCase = new list<Case>();
        for(integer i= 0; i<100; i++){
            Case cs = new Case();
            cs.Status = 'New';
            cs.Origin = 'Web';
            lstCase.add(cs);
        }
        if(!lstCase.isEmpty()){
            insert lstCase;
        }
        test.StartTest();
            BatchCaseCreateTask bc = new BatchCaseCreateTask();
            database.executeBatch(bc);
        test.stopTest();
        list<Task> lstTask = [Select id from Task ];
        system.assertEquals(100, lstTask.size());
    }
}
