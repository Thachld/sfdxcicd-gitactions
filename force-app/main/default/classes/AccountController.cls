
public with sharing class AccountController {
    public static List<Account> getAccs(){
        return [SELECT Id FROM Account LIMIT 104];
    }
}

