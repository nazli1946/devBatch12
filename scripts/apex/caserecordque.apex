CaseRecordQue obj = new CaseRecordQue();
id jobId = system.enqueueJob(obj);
system.debug('job id number is  '  + jobId);