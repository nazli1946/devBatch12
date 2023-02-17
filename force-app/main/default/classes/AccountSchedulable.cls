public  class AccountSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
        //we can call any methods of any apex class here
        //or we can directly write some apex code here
        //or we can call fi=uture, queueable or batch
        //Batch is recommended bc if we hve lots of records we can process

        database.executeBatch(new AccountsBatch());
    }
    
}
