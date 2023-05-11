public with sharing class BloqueiaIntegracao {
   
  
    private static void BloqueiaIntegracao(List<Opportunity> Opp){
     
            for(Opportunity OppA : Opp){
                if(!ValidaPapelFinanceiro(OppA.Id)) {
                    OppA.addError('É necessario ter o papel financeiro alinhado na oportunidade.');
                }         
            }
     }

     private static boolean ValidaPapelFinanceiro(String OppA) {
       List<OpportunityContactRole> Opp = new List<OpportunityContactRole>();
       boolean resultado = false;
       Opp = [SELECT Id from OpportunityContactRole where Opportunityid =: OppA AND Role =: 'Responsável Financeiro'];
       if (Opp.size() > 0 ) {
         resultado = true;
       } else {
          resultado = false;
       }

       return resultado;
  
    }   

}
