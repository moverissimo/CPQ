public with sharing class AccountBO {
    public AccountBO() {
    }

    private static final AccountBO instancia = new AccountBO();
    //private AccountDAO dao = AccountDAO.getInstance();

    public static AccountBO getInstance() {
        return instancia;
    }

    public void  validaCEP(List<Account> contas) {
        
        for(Account conta: contas) {
            if (String.isNotEmpty(conta.BillingPostalCode)) {
                if(!Util.isCEP(conta.BillingPostalCode)){
                    conta.addError('CEP Inválido');
                }
            }
            if ((conta.BillingPostalCode !=null)|| (conta.BillingPostalCode !='')) {
                if(!Util.isCEP(conta.BillingPostalCode)){
                    conta.addError('CEP Inválido');
                }
            }
        }

    }


}