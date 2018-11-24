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
 * @author fasap
 */
public class ControladorPlanAccionSemillero {

    public JSONObject listarPlanesAccionSemillero(String idSemillero, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("#");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject listaplanesAccionSemillero = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            listaplanesAccionSemillero = new JSONObject(source);                        
        }        
        return listaplanesAccionSemillero;  
    }

    public JSONObject cargarInfo(String idSemillero, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("#"+idSemillero);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject infoPlanAccion = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            infoPlanAccion = new JSONObject(source);                        
        }        
        return infoPlanAccion;  
    }

    public boolean vincularProyectoPlanSemillero(String anio, String semestre, String idSemillero, String idProyecto, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter("año", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("idProyecto", idProyecto);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarCapacitacionPlanAccionSemillero(String anio, String semestre, String idSemillero, String lineaInvestigacion, String nombreCapacitacion, String objetivoCapacitacion, String fechaRealizacion, String numAsistentes, String[] responsables, String nombreEvidencia, String[] file, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter("anio", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("lineaInvestigacion", lineaInvestigacion);
        requestBuilder.addParameter("nombreCapacitacion", nombreCapacitacion);
        requestBuilder.addParameter("objetivoCapacitacion", objetivoCapacitacion);
        requestBuilder.addParameter("fechaRealizacion", fechaRealizacion);
        requestBuilder.addParameter("numAsistentes", numAsistentes);
        requestBuilder.addParameter("responsables", String.join("-", responsables));
        requestBuilder.addParameter("nombreEvidencia", nombreEvidencia);
        requestBuilder.addParameter("file", String.join("-", file));
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarActividadPlanAccionSemillero(String anio, String semestre, String idSemillero, String actividad, String[] responsablesAct, String fechaRealizacion, String producto, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter("anio", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("actividad", actividad);
        requestBuilder.addParameter("responsablesAct", String.join("-", responsablesAct));
        requestBuilder.addParameter("fechaInicio", fechaRealizacion);
        requestBuilder.addParameter("producto", producto);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public JSONObject registrarPlanAccionSemillero(String anio, String semestre, String idSemillero, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter("anio", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        JSONObject planAccionSemillero = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            planAccionSemillero = new JSONObject(source);
        }        
        return planAccionSemillero;
    }
    
}
