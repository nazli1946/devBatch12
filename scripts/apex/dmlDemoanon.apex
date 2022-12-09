DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj(); 
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlInsertDemo_4();
DmlDemo.dmlInsertDemo_5();

DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlInsertmultiple_right2();
DmlDemo.dmlMultipleRecordUpdate_right();

list<account> listAccount = [select id from account where createdDate = THIS_WEEK ];
delete listAccount;