trigger AccountTrigger on Account (before insert, before update) {
    for (Account acc: Trigger.New) {
            if ( !String.isBlank(acc.BillingPostalCode)) {
                if ( acc.BillingPostalCode.length() < 9 )  {
                    String NewCep = acc.BillingPostalCode.substring(0,5)+'-'+ acc.BillingPostalCode.substring(5,8);
                    acc.BillingPostalCode = NewCep;
                }
            
            }
    }   
}