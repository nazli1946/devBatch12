public with sharing class RestCallout12 {
    public static void getUser() {
        //1. Request olusturma
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://reqres.in/api/users/2');
        Request.setMethod('GET');
        
        //2. Bu request API ya gonderip dondirdigi degeri yani response degerini alma
        Http http = new Http();
        HttpResponse response =  http.send(request);
        system.debug('get status =. ' + response.getStatus());
        system.debug('get status  code =. ' + response.getStatusCode());
        system.debug('get body(data-veri) => ' +     response.getBody());

        //3. Bir data gelirse bu datanin icindedki verileri goruntuleme
        if(response.getStatusCode() == 200){
            string jsonUser = response.getBody();
            Map<string, object> userValue=(Map<string, object>) JSON.deserializeUntyped(jsonUser);
            system.debug('veri=> ' + userValue);
            system.debug('data = > ' + userValue.get('data'));
            system.debug('support = > ' + userValue.get('support'));

            Map<string, object> userInfo= (Map<string, object>)userValue.get('data');
            system.debug('id = ' +userInfo.get('id'));
            system.debug('first name = ' +userInfo.get('first_name'));
            system.debug('last name = ' +userInfo.get('last_name'));
            system.debug('email = ' +userInfo.get('email'));



        }

        


        
    }
}