/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
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
public class ControladorPlanAccion {

    public JSONObject listarPlanesAccion(String token, String id) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/planesAccion");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;   
    }

    public JSONObject cargarInfoForm(String token, String idGrupo) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/dataForm/"+idGrupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj; 
    }

    public JSONObject registrarInicialPlanAccionGrupo(String año, String semestre, String id_grupo, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/planAccion");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("token", token);
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

    public boolean vincularProyectoPlanGrupo(String año, String semestre, String id_grupo, String id_proyecto, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/vincularProyecto");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarEventoPlanAccionGrupo(String año, String semestre, String id_grupo, String evento, String caracterEvento, 
            String[] responsables, String fechaIni, String fechFin, String[] intPromotoras, String[] entidades, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/eventoGrupo");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("evento", evento);
        requestBuilder.addParameter("caracterEvento", caracterEvento);
        requestBuilder.addParameter("responsables", String.join("-", responsables));
        requestBuilder.addParameter("fechaIni", fechaIni);
        requestBuilder.addParameter("fechFin", fechFin);
        requestBuilder.addParameter("intPromotoras", String.join("-", intPromotoras));
        requestBuilder.addParameter("entidades", String.join("-", entidades));
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarActividadPlanAccionGrupo(String año, String semestre, String id_grupo, String actividad, String[] respAct, 
            String fechaInicio, String fechFinal, String producto, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/actiGrupo");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("actividad", actividad);
        requestBuilder.addParameter("respAct", String.join("-", respAct));
        requestBuilder.addParameter("fechaInicio", fechaInicio);
        requestBuilder.addParameter("fechFinal", fechFinal);
        requestBuilder.addParameter("producto", producto);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }
    
}
