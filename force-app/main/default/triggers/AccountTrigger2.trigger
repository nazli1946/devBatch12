trigger AccountTrigger2 on Account (before insert) {
    for(Account acc : Trigger.new){
        acc.Description = ' this account created by Seyma '; 
    }


    

}