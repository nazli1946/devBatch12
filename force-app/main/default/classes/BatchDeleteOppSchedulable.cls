public  class BatchDeleteOppSchedulable implements Schedulable{
    public void execute (SchedulableContext sc){
        BatchDeleteOpp bc = new BatchDeleteOpp();
        Database.executeBatch(bc, 5);
    }
    
}
