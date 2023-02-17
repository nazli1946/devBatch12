@isTest
public with sharing class RestCalloutsTest {
    @isTest
    private static void getAnimalsTest() {
        //1. Set the Mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        //2. Test the Mock
        HttpResponse response = RestCallouts.getAnimals();
        //3. Run Asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
    @isTest
    private static void getAirlinesTest() {
        // 1. Set the Mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        // 2. Test the Mock
        HttpResponse response = RestCallouts.getAirlines();
        // 3. Run Asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
    @isTest
    private static void getEmployeeTest() {
        // 1. Set the Mock
        RestCalloutsMock mock = new RestCalloutsMock();
        Test.setMock(HttpCalloutMock.class, mock);
        // 2. Test the Mock
        HttpResponse response = RestCallouts.getEmployees();
        // 3. Run Asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
}







