@isTest
private class AccountTriggerTest {

    static TestMethod void regionTest () {
        
        List<Account> Lacc = new List<Account>();
        
        for (Integer i=0; i<200; i++) {
            Account acc = new Account (Name = 'Test - ' + i);
            Lacc.add(acc);
        }
        
        insert Lacc;
        
        Lacc = [SELECT Region__c FROM Account WHERE Name LIKE 'Test - %'];
        
        for (Account acc: Lacc) {
            System.assertEquals('EMEA', acc.Region__c);
        }
    }
}