public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('printing datatypes');
        string batchName = 'batch 12';
        integer totalCandidates = 65;
        boolean isAdminCompleted = true;
        system.debug('batch name is ... ' + batchName);
        system.debug('total Candidates are ... ' + totalCandidates);
        system.debug('is Admin completed ? ...' + isAdminCompleted);

        Decimal decValue = 27.01;
        system.debug('Decimal: ' + decValue);

        Long longValue = 214575675674L;
        system.debug('long value is ' + longValue);

    }

    public void printBasicDataType2(){
        Object ob1 = 'string datatype in object';
        Object ob2 =77;
        Object ob3 = true;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        Id accId = '0015h000014R11WAAS';
        system.debug('acc id is ' + accId);
        
    }
    
    }
