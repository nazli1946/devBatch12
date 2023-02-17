public with sharing class CovidTracker {
    public static HttpResponse getCovidTracker() {
    //1. Prepare request
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
    request.setMethod('GET');
    //2. Prepare Internet
    Http http = new Http();
    //3. Send request to the internet and receive the response
   HttpResponse response = http.send(request);
    //4. Process the response
    List<Covid_Info__c> listCovidInfo = new List<Covid_Info__c>();
    if(response.getStatusCode() == 200){
        String jsonData = response.getBody();
        List<wrapperCovidInfo> listwrapper = (List<wrapperCovidInfo>)JSON.deserialize(jsonData, List<wrapperCovidInfo>.class);
        for(wrapperCovidInfo eachWrapper : listWrapper){
            Covid_Info__c obj = new Covid_Info__c();
            obj.Name = String.valueOf(eachWrapper.states);
            obj.Positives__c = eachWrapper.positive;
            obj.Negatives__c = eachWrapper.negative;
            obj.Pendings__c = eachWrapper.pending;
            obj.Received_Dates__c = date.today();
            listCovidInfo.add(obj);
        }
    }
    List<Covid_Info__c> covidInfoToday = [SELECT Name, Positives__c, Negatives__c, Pendings__c
                                    FROM Covid_Info__c
                                    WHERE Received_Dates__c = TODAY
                                    LIMIT 1];
    try{
        if(covidInfoToday.size() == 0){
            insert listCovidInfo;

    }else {
        covidInfoToday[0].Name = listCovidInfo[0].Name;
        covidInfoToday[0].Positives__c = listCovidInfo[0].Positives__c;
        covidInfoToday[0].Negatives__c = listCovidInfo[0].Negatives__c;
        covidInfoToday[0].Pendings__c = listCovidInfo[0].Pendings__c;
        update covidInfoToday;
    }
}catch(Exception ex){
    system.debug(ex.getMessage());
}
    return Response;
    }
    public class wrapperCovidInfo{
        public integer states;
        public integer positive;
        public integer negative;
        public integer pending;
    }
}










