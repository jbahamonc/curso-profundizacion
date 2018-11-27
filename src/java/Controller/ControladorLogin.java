/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author jeferson
 */
public class ControladorLogin {

    public JSONObject iniciarSesion(String user, String pass) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/login");
        requestBuilder.addParameter("usuario", user);
        requestBuilder.addParameter("clave", pass);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity()); 
        System.out.println(source);
        JSONObject obj = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            obj = new JSONObject(source);
        }        
        return obj;
    }    
}
