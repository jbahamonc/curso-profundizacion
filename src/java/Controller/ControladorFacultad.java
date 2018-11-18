/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author jeferson
 */
public class ControladorFacultad {
    
    
    public boolean registrarFacultad (String codigo, String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();    
        NameValuePair value1 = new BasicNameValuePair("codigo", codigo);
        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/facultad");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }

    public boolean eliminarFacultad(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/facultad/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public ArrayList<JSONObject> listarFacultad() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/facultad");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("facultad");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
}
