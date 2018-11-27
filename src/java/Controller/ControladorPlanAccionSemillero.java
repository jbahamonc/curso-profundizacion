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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author fasap
 */
public class ControladorPlanAccionSemillero {

    public JSONArray listarPlanesAccionSemillero(String idSemillero, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/planesAccionGrupoSemillero/"+idSemillero+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray listaplanesAccionSemillero = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println("** " + source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            listaplanesAccionSemillero = new JSONArray(source);                        
        }        
        return listaplanesAccionSemillero;  
    }

    public JSONObject cargarInfo(String idSemillero, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyectosNuevosIntegrantes/"+idSemillero+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject infoPlanAccion = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println("** " + source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            infoPlanAccion = new JSONObject(source);                        
        }        
        return infoPlanAccion;  
    }

    public boolean vincularProyectoPlanSemillero(String anio, String semestre, String idSemillero, String idProyecto, String tipoSesion, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter("año", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", idSemillero);
        requestBuilder.addParameter("idProyecto", idProyecto);
        requestBuilder.addParameter("tipoSesion", tipoSesion);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarCapacitacionPlanAccionSemillero(String anio, String semestre, String idSemillero, String nombreCapacitacion, String objetivoCapacitacion, String fechaInicio, String fechaFinal, String numAsistentes, String[] responsables, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/capacitacionCrearSemilleroAsignarPlanAccion");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("nombre", nombreCapacitacion);
        requestBuilder.addParameter("responsables", String.join("-", responsables));
        requestBuilder.addParameter("objetivo", objetivoCapacitacion);
        requestBuilder.addParameter("n_asistentes", numAsistentes);
        requestBuilder.addParameter("fecha_ini", fechaInicio);
        requestBuilder.addParameter("fecha_fin", fechaFinal);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarActividadPlanAccionSemillero(String anio, String semestre, String idSemillero, String actividad, String[] responsablesAct, String fechaInicio, String fechaFinal, String producto, String tipoSesion, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/createActividadGrupoSemilleroAsignarPlanAccion");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", idSemillero);
        requestBuilder.addParameter("tipoSession", tipoSesion);
        requestBuilder.addParameter("nombre", actividad);
        requestBuilder.addParameter("responsables", String.join("-", responsablesAct));
        requestBuilder.addParameter("producto", producto);
        requestBuilder.addParameter("fecha_inicio", fechaInicio);
        requestBuilder.addParameter("fecha_final", fechaFinal);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public JSONObject registrarPlanAccionSemillero(String anio, String semestre, String idSemillero, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/createPlanGrupoSemillero");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", idSemillero);
        requestBuilder.addParameter("tipoSession", tipoSesion);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        JSONObject planAccionSemillero = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            planAccionSemillero = new JSONObject(source);
            JSONObject planOld = obtenerProyectosActividadesNoTerminados(anio, semestre, idSemillero, tipoSesion, token);
            if ( planOld != null ) {
                planAccionSemillero.put("proyectos", planOld.getJSONArray("proyectosNoTerminado"));
                planAccionSemillero.put("actividades", planOld.getJSONArray("actividadesNoterminada"));
            }
            JSONObject eventOld = obtenerCapacitacionesPlanAccionNoTerminados(anio, semestre, idSemillero, token);
            if ( eventOld != null ) {
                planAccionSemillero.put("eventos", eventOld.getJSONArray("EventoNoTerminado"));
            }
        }        
        return planAccionSemillero;
    }
    
    private JSONObject obtenerProyectosActividadesNoTerminados(String anio, String semestre, String idSemillero, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/ProyectosActividadesNoterminadoPlanAccionGrupoSemillero/"+idSemillero+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }
    
    private JSONObject obtenerCapacitacionesPlanAccionNoTerminados(String anio, String semestre, String idSemillero, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/capacitacionNoTerminadoPlanAccionSemillero/"+idSemillero);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }
    
    public boolean vincularProyectosNuevosViejosSemillero(String anio, String semestre, String idSemillero, String id_pro, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/asignarProyectoPlanAccionGrupoSemillero");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", idSemillero);
        requestBuilder.addParameter("tipoSession", "0");
        requestBuilder.addParameter("id_proyecto", id_pro);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }
    
    public boolean vincularActividadesAntiguasPlanSemillero(String anio, String semestre, String idSemillero, String id_act, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/asignarActividadesPlanAccionGrupoSemillero");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", idSemillero);
        requestBuilder.addParameter("tipoSession", "0");
        requestBuilder.addParameter("id_actividad", id_act);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean vincularCapacitacionesAntiguosPlanSemillero(String anio, String semestre, String idSemillero, String id_cap, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/asignarCapacitacionPlanAccionSemillero");
        requestBuilder.addParameter("year", anio);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idSemillero", idSemillero);
        requestBuilder.addParameter("id_capacitacion", id_cap);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }
    
}
