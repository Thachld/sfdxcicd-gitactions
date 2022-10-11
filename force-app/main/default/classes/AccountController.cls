<<<<<<< HEAD

public with sharing class AccountController {
    public static List<Account> getAccs(){
        return [SELECT Id FROM Account LIMIT 102];
    }
}
=======
public with sharing class AccountController {
    public static List<Account> getAccs(){
        return [SELECT Id FROM Account LIMIT 100];
    }
}
>>>>>>> 8e3dd91c76ca0752f10c6ec8f2630926f1ef442b
