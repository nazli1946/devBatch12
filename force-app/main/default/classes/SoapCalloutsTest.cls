@isTest 
public with sharing class SoapCalloutsTest {

    @istest 
    private static void parksCallouttest() {
        //1. Set the Mock
        ParksServicesMock mock = new ParksServicesMock();
        test.setMock(WebServiceMock.class, mock);

        //2.Test the mock
        String country = 'Turkiye';
        String[] parks = SoapCallouts.parksCallouts(country);


        //3.Do asserts
        System.assertEquals(2, parks.size());

        
    }
    @isTest  
    private static void doAddCalloutTest() {
        //1.Set the mock
        DoAddCalloutMock mock = new DoAddCalloutMock();
        test.setMock(WebServiceMock.class, mock);

        //2.Test the mock
        Double result = SoapCallouts.doAddCallout(10, 6);

        //3. Do assert
        System.assertEquals(15, result);



        
    }
    
}