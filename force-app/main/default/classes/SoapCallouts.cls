public with sharing class SoapCallouts {
    public static string [] parksCallouts(string country) {
        ParksServices.ParksImplPort parkService = new parksServices.ParksImplPort();
        String[] parks = parkService.byCountry(country);
        system.debug(parks);
        return parks;
    }

    public static Double doAddCallout(Double arg0, Double arg1) {

        calculatorServices.CalculatorImplPort addNumber = new calculatorServices.CalculatorImplPort();
        Double result = addnumber.doAdd(arg0, arg1);
        system.debug(result);
        return result;

        
    }

    public static Double timesCallout(Double x, Double y) {
    calculatorServices.CalculatorImplPort timesNumber = new calculatorServices.CalculatorImplPort();
    Double times= timesNumber.doMultiply(x, y);
    system.debug(times);
    return times; 

        
    }
    
}