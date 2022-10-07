public with sharing class GMS_AccountController {
    @AuraEnabled
    public static List<Account> getAllAccounts(){
        return [Select Id,Name ,AnnualRevenue,Description,NumberOfEmployees,Industry,Rating,Phone from Account] ; 
        
    }
    @AuraEnabled
    public static void updateAccount(List<Account> acc ){
        update acc;
    }
}