public class CountryFlags12 {
    public static HttpResponse getCountries() {
        //1. 
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://restcountries.com/v2/all');
        Request.setMethod('GET');

        //2.
        Http ht = new Http();
        HttpResponse response = ht.send(request);

        //3.
        if(response.getStatusCode()==200){
            String jsonData = response.getBody();

        }        
    }
    public class wrapperCountryFlag{
        public string name;
        public String nativeName;
        public integer population;
        public integer capital;
        public string region;
        public flagWrapper flags;


    }

    public clss flagWrapper{
        public string svg; 
    }

}

    
