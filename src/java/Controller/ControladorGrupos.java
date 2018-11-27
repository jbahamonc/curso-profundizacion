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
    
    public JSONObject consultarGrupo(String id_grupo, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/paginaPrincipal/"+id_grupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject json = null;
        String source = "";
        System.out.println("id " + id_grupo);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            source = EntityUtils.toString(httpResponse.getEntity());
            json = new JSONObject(source);
        }    
        System.out.println(source);
        return json;
    }

    
    public JSONObject listarGrupos() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/grupoCategoriaDirector");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            String source = EntityUtils.toString(httpResponse.getEntity());
            jsonObj = new JSONObject(source);
            System.out.println(source);            
        }            
        return jsonObj;
    }

    public JSONObject cargarInfoRegistroGrupos(String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/datosCrearGrupo");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject json = null;
        String source = "";
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            source = EntityUtils.toString(httpResponse.getEntity());
            json = new JSONObject(source);                   
        }        
        System.out.println(source);     
        return json;
    }

    public boolean eliminarGrupo(String idDel, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/grupo/"+idDel);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );    
    }

    public JSONObject listarGruposCategorias() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/categoriaGrupo");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject json = null;
        String source = "";
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {
            source = EntityUtils.toString(httpResponse.getEntity());
            json = new JSONObject(source);                   
        }        
        System.out.println(source);     
        return json;
    }
    
}
