public with sharing class Posts {
    public static HttpResponse postPosts() {
    //1. Prepare request
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://gorest.co.in/public/v2/posts');
    request.setMethod('POST');

    //1.1 Prepare Body
    Post__c orgPosts = [SELECT User_Id__c,Title__c, Body__c FROM Post__c WHERE CreatedDate = TODAY and User_Id__c = '273662'];
        PostWrapper p = new PostWrapper();
        p.user_id = integer.valueOf(orgPosts.User_Id__c);
        p.Title = orgPosts.Title__c;
        p.body = orgPosts.Body__c;
        request.setBody(JSON.serialize(p));


    request.setHeader('Content-Type', 'application/json;charset=UTF=8');
    request.setHeader('Authorization', 'Bearer 5d331cf694fe6c54a82d8ba53c0237ee2cb6204fe9f0a452a7b74ec09187d071');
    
    //2. Prepare Internet
    Http http = new Http();
    //3. Send request to the internet and receive the response
    HttpResponse response = http.send(request);

    //4. Process the response
    if(response.getStatusCode()==201){
        system.debug(response.getBody());

    }else{
        system.debug('An error occured while sending the posts');
        system.debug(response.getStatus());
    }
    return response;

        
    }
    public class PostWrapper{
        public integer user_id;
        public string title;
        public string body;

    }
}