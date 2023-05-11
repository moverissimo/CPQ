@isTest
public class AccountTriggerTest {
   @TestSetup
   static void setup(){
    Account conta = [Select Id From Account Limit 1];
   }

@isTest
public static void testValidaCEPSucess() {
    test.startTest();
       
    test.stopTest();
}

@isTest
public static void testValidaCEPErrorData() {
    test.startTest();

    test.stopTest();
}

}