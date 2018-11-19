/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
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
public class ControladorGrupos {

    public int registrarGrupo(String nombre, String siglas, String tipoUnidad, String nombreUnidad, String ubicacion, 
                                String fecha, String codigoGruplav, String clasificado, String categoria, String email, 
                                String nombreDpto, String director) throws IOException, JSONException {
        
        HttpClient httpClient = HttpClients.createDefault();    
        NameValuePair nom = new BasicNameValuePair("nombre", nombre);
        NameValuePair sig = new BasicNameValuePair("sigla", siglas);     
        NameValuePair unidad = new BasicNameValuePair("id_unidad", nombreUnidad);     
//        NameValuePair value2 = new BasicNameValuePair("nombre", nombreUnidad);       
        NameValuePair ubi = new BasicNameValuePair("ubicacion", ubicacion);     
        NameValuePair fechaC = new BasicNameValuePair("fecha_creacion", fecha);     
        NameValuePair codigoG = new BasicNameValuePair("codigo_colciencias", codigoGruplav);     
        NameValuePair clasifi = new BasicNameValuePair("clasificado", clasificado);     
        NameValuePair cat = new BasicNameValuePair("id_categoria", categoria);     
        NameValuePair correo = new BasicNameValuePair("correo", email);     
        NameValuePair dir = new BasicNameValuePair("director_grupo", director);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/grupo");
        requestBuilder.addParameter(nom);
        requestBuilder.addParameter(sig);
        requestBuilder.addParameter(unidad);
        requestBuilder.addParameter(ubi);
        requestBuilder.addParameter(fechaC);
        requestBuilder.addParameter(codigoG);
        requestBuilder.addParameter(clasifi);
        requestBuilder.addParameter(cat);
        requestBuilder.addParameter(correo);
        requestBuilder.addParameter(dir);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            JSONObject obj = new JSONObject(source);
            System.out.println("id " + obj.getInt("id"));
            return obj.getInt("id");
        }        
        return -1;
    }
    
    public JSONObject consultarGrupo(String id_grupo) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/grupo/"+id_grupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject json = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            String source = EntityUtils.toString(httpResponse.getEntity());
            System.out.println(source);
            json = new JSONObject(source);
        }            
        return json;
    }

    public JSONArray listarGrupos() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/grupo/");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonArr = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            String source = EntityUtils.toString(httpResponse.getEntity());
            jsonArr = new JSONArray(source);
            System.out.println(source);            
        }            
        return jsonArr;
    }
    
}
