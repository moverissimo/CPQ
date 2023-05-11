public with sharing class Util {

      
    public static boolean isCEP(String strCEP) {
        
        String objER = '^[0-9]{5}(?:-[0-9]{4})?$';
            
        Boolean resultado = false;
        strCEP = Trim(strCEP);
        if (strCEP.length > 0) {
                    if(objER.test(strCEP))
                    resultado = true;
                    else
                    resultado = false;
        } else {
                resultado = false;
        }
          return resultado;      
        
        } 
    

}