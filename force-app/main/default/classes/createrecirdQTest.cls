@isTest  
public class createrecirdQTest {
    @isTest
    private static void testQueuable() {
        test.startTest();
        CaseRecordQue obj = new CaseRecordQue();
        id jobId = system.enqueueJob(obj);
        test.stopTest();

        list<case> updatecs = [select id, origin,status from Case];
        system.assert(updatecs!= null, ' case has been created');
        system.assertEquals(4, updatecs.size());


        
    }  
    
}
