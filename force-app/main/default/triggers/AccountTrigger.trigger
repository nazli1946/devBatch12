trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if (Trigger.isBefore) {
        AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        //call method to update vio fields of all contacts.
        AccountTriggerHandler.updateVIPforContacts(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }


    }


/*

trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isBefore){
        Map<id, account> accTriggerOldMap= Trigger.oldMap;
        system.debug('before insert /update trigger on Account object');
        for(Account eachAcc :Trigger.new){
            if(trigger.isInsert && eachAcc.active__c == 'yes'){
                eachAcc.Description = 'Account is active , Enjoy!';
            }    
            if(trigger.isUpdate){
                Account oldAcc = accTriggerOldMap.get(eachAcc.id);
                Account newAcc = trigger.newMap.get(eachAcc.id);
                if(eachAcc.active__c == 'yes' && oldAcc.Active__c != newAcc.Active__c){
                    eachAcc.Description = 'account is now active . Enjoy celebrate';
                }

            }

            }
        }
        
    }



   
   /*
    List<account> accTriggerNew = trigger.new;
    List<account> accTriggerOld = trigger.old;
    Map<id, account> accTriggerNewMap = trigger.newmap;
    Map<id, account> accTriggerOldMap = trigger.oldMap;


    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
            integer countWebsite = 0;
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);

            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);
            string newWebsite = newAccount.Website;

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
            string oldWebsite = oldAccount.Website;

            if (newWebsite != oldWebsite) {
                system.debug('Account ' + newaccount.Name + ', new website is ' + newWebsite);
                countWebsite++;
            }
        }
        system.debug(' # account website updated --> ' + countWebsite);
    }
}

    /*

    if (Trigger.isAfter && Trigger.isUpdate) {
        Set<id> accIds = accTriggerNewMap.keySet();
        //for each loop of set of ids
            //get value of new account using ID from newMap
            //get value of old account using ID from oldMap
        for (Id eachId : accIds) {
            system.debug('eachId -> ' + eachId);

            account newAccount = accTriggerNewMap.get(eachId);
            system.debug('newAccount name -> ' + newAccount.Name);

            account oldAccount = accTriggerOldMap.get(eachId);
            system.debug('oldAccount name -> ' + oldAccount.Name);
        }
    }
}



/*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger new: ' + accTriggerNew); //yes, but no id
        system.debug('before insert trigger old: ' + accTriggerOld);//null
        system.debug('before insert trigger new map: ' + accTriggerNewMap);//null
        system.debug('before insert trigger old map: ' + accTriggerOldMap);//null
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger new: ' + accTriggerNew);//yes
        system.debug('after insert trigger old: ' + accTriggerOld);//null
        system.debug('after insert trigger new map: ' + accTriggerNewMap);//yes
        system.debug('after insert trigger old map: ' + accTriggerOldMap);//null
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger new: ' + accTriggerNew);
        system.debug('before update trigger old: ' + accTriggerOld);
        system.debug('before update trigger new map: ' + accTriggerNewMap);
        system.debug('before update trigger old map: ' + accTriggerOldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger new: ' + accTriggerNew);
        system.debug('after update trigger old: ' + accTriggerOld);
        system.debug('after update trigger new map: ' + accTriggerNewMap);
        system.debug('after update trigger old map: ' + accTriggerOldMap);
    }
}
    /*
    
    Map<Id, account> acctriggerNewMap = trigger.newmap;
    Map<Id, account> acctriggerOldMap = trigger.oldmap;
    
    if(trigger.isBefore && trigger.isInsert){
        system.debug('before insert trigger new map : ' + acctriggerNewMap);
        system.debug('before insert trigger OLD map : ' + acctriggerOldMap);

    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('AFTER insert trigger new map : ' + acctriggerNewMap);
        system.debug('AFTER insert trigger OLD map : ' + acctriggerOldMap);

    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before update trigger new map : ' + acctriggerNewMap);
        system.debug('before update trigger old map : ' + acctriggerOldMap);

    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger new map : ' + acctriggerNewMap);
        system.debug('after update trigger old map : ' + acctriggerOldMap);

    }
        
        
}
    
    
    /*
    if (Trigger.isAfter && Trigger.isUpdate) {
        List<account> accTriggerOld = trigger.old;
        for (account oldAcc : accTriggerOld) {
            system.debug('old acc id ' + oldAcc.id + ', old acc name is ' + oldAcc.Name);
        }

        List<account> accTriggerNew = trigger.new;
        for (account newAcc : accTriggerNew) {
            system.debug('new acc id ' + newAcc.id + ' new acc name is ' + newAcc.Name);
        }
    } */
    

       
          
        
    
    /*
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert trigger.old is ' + trigger.old); //null
        
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after insert trigger.old is ' + trigger.old); //null


    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update trigger.old is ' + trigger.old); 
        
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after uptade trigger.old is ' + trigger.old); 


    }
    
    
    /*
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('record in after insert : ' + trigger.new);
    }

 
    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('account Before Insert trigger called.');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('account After Insert trigggger called. yeah');
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('account Before Update trigger called.');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('account After Update trigggger called. yeah');
    }
    */

    /*
    //when we insert record - trigger.isinsert will be true.
    if (Trigger.isInsert) {
        system.debug('account before insert trigger called');    
    }
    //when we update record - trigger.isUpdate will be true.
    if (Trigger.isUpdate) {
        system.debug('account before update trigger called');    
    }*/


    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }*/
