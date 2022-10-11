@istest
public with sharing class AccountController_Test {
    @istest
    public static void testGetAccount(){
        List<Account> insertACCs = new List<Account>();
        for(Integer i =0; i < 105; i++){
            Account acc = new Account(Name = 'Acc Name ' + String.valueOf(i));
            insertACCs.add(acc);
        }

        insert insertACCs;

        List<Account> accss = AccountController.getAccs();
    }
}
