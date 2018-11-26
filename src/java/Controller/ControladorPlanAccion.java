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

    public JSONObject cargarInfoForm(String token, String idGrupo, String tipoSesion) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyectosNuevosIntegrantes/"+idGrupo+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj; 
    }

    public JSONObject registrarInicialPlanAccionGrupo(String año, String semestre, String id_grupo, String tipoSession, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/createPlanGrupoSemillero");
        requestBuilder.addParameter("year", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", id_grupo);
        requestBuilder.addParameter("tipoSession", tipoSession);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject obj = null;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            obj = new JSONObject(source);
            JSONObject planOld = obtenerProyectosActividadesNoTerminados(año, semestre, id_grupo, tipoSession, token);
            if ( planOld != null ) {
                obj.put("proyectos", planOld.getJSONArray("proyectosNoTerminado"));
                obj.put("actividades", planOld.getJSONArray("actividadesNoterminada"));
            }
            JSONObject eventOld = obtenerEventosPlanAccionNoTerminados(año, semestre, id_grupo, token);
            if ( eventOld != null ) {
                obj.put("eventos", eventOld);
            }
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
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/createEventoGrupoAsignarloPlanAccion");
        requestBuilder.addParameter("year", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupo", id_grupo);
        requestBuilder.addParameter("nombre", evento);
        requestBuilder.addParameter("caracterEvento", caracterEvento);
        requestBuilder.addParameter("responsables", String.join("-", responsables));
        requestBuilder.addParameter("fecha_inicio", fechaIni);
        requestBuilder.addParameter("fecha_final", fechFin);
        requestBuilder.addParameter("instituciones_promo", String.join("-", intPromotoras));
        requestBuilder.addParameter("entidades", String.join("-", entidades));
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
//        String source = EntityUtils.toString(httpResponse.getEntity());
//        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registrarActividadPlanAccionGrupo(String año, String semestre, String id_grupo, String actividad, String[] respAct, 
            String fechaInicio, String fechFinal, String producto, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/createActividadGrupoSemilleroAsignarPlanAccion");
        requestBuilder.addParameter("year", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", id_grupo);
        requestBuilder.addParameter("nombre", actividad);
        requestBuilder.addParameter("responsables", String.join("-", respAct));
        requestBuilder.addParameter("fecha_inicio", fechaInicio);
        requestBuilder.addParameter("fecha_final", fechFinal);
        requestBuilder.addParameter("producto", producto);
        requestBuilder.addParameter("tipoSession", "1");
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registroAvanceActividadPlan(String año, String semestre, String id_grupo, String id_actividad, String porcentaje, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/avanceActividad");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("actividad", id_actividad);
        requestBuilder.addParameter("porcentaje", porcentaje);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean registroAvanceEventoPlan(String año, String semestre, String id_evt, String porcentaje, String id_grupo, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/avanceEvento");
        requestBuilder.addParameter("año", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("id_grupo", id_grupo);
        requestBuilder.addParameter("id_evento", id_evt);
        requestBuilder.addParameter("porcentaje", porcentaje);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public JSONObject consultarPlanAccionGrupo(String año, String semestre, String id_grupo, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/planAccionGrupo/"+año+"/"+semestre+"/"+id_grupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj; 
    }
    
    private JSONObject obtenerProyectosActividadesNoTerminados(String año, String semestre, String id_grupo, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/ProyectosActividadesNoterminadoPlanAccionGrupoSemillero/"+id_grupo+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
//        System.out.println("----------------------- plan old");
//        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }

    private JSONObject obtenerEventosPlanAccionNoTerminados(String año, String semestre, String id_grupo, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/eventoNoTerminadoPlanAccionGrupo/"+id_grupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
//        System.out.println("----------------------- plan old");
//        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }

    public boolean vincularProyectosNuevosViejos(String año, String semestre, String id_grupo, String id_pro, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/asignarProyectoPlanAccionGrupoSemillero");
        requestBuilder.addParameter("year", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", id_grupo);
        requestBuilder.addParameter("tipoSession", "1");
        requestBuilder.addParameter("id_proyecto", id_pro);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    public boolean vincularActividadesAntiguasPlanGrupo(String año, String semestre, String id_grupo, String id_act, String token) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/asignarActividadesPlanAccionGrupoSemillero");
        requestBuilder.addParameter("year", año);
        requestBuilder.addParameter("semestre", semestre);
        requestBuilder.addParameter("idGrupoSemillero", id_grupo);
        requestBuilder.addParameter("tipoSession", "1");
        requestBuilder.addParameter("id_actividad", id_act);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }
}
