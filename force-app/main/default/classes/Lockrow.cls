public with sharing class Lockrow {
    Id accountId = [SELECT Id, name FROM Account LIMIT 1].Id;

    public void updateAccount() {
        Account[] a = [SELECT Id FROM Account WHERE Id = :accountId FOR UPDATE];
        for(integer i = 0; i < 3000000; i++) {
            // Do nothing, haha!
        }
        if(!a.isempty()) {
            a[0].name = 'test2';
            update a[0];
        }
        system.debug(logginglevel.error, a.isempty());
    }
}