public class AccountTriggerHandler {
    private static AccountBO bo = AccountBO.getInstance();

    public override void beforeInsert() {
        bo.validaCEP(trigger.new);
    
    }

    public override void beforeUpdate() {
        bo.validaCEP(trigger.new);
     }
}