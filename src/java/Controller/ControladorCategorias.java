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
public class ControladorCategorias {
    
    // CATEGORIAS DEDICACION DOCENTE
    public boolean registrarCategoriaDedicacion (String token, String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();       
        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/categoria/dedicacion");
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }

    public boolean eliminarCategoriaDedicacion(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/categoria/dedicacion/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public ArrayList<JSONObject> listarCategoriasDedicacion() throws IOException, JSONException { 
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/categoria/dedicacion");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("categoriadedicacion");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
    
    
    
     
    // CATEGORIAS  DOCENTE
    public boolean registrarCategoriaDocente (String token, String nombre) throws IOException {
        
        HttpClient httpClient = HttpClients.createDefault();    
        
        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/categoriadocente");
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }

    public boolean eliminarCategoriaDocente(String codigo) throws IOException {
        
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/categoriadocente/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public ArrayList<JSONObject> listarCategoriasDocente() throws IOException, JSONException {
        
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/categoriadocente");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("categoriadocente");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
    
    
    
    // CATEGORIAS  DOCENTE
    public boolean registrarCategoriaInvestigador (String token,String nombre) throws IOException {
        
        HttpClient httpClient = HttpClients.createDefault();    
        
        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/categoriadocente");
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }

    public boolean eliminarCategoriaInvestigador(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/categoriainvestigador/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public ArrayList<JSONObject> listarCategoriasInvestigador() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/categoriainvestigador");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("categoriainvestigador");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
}
