/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import static jdk.nashorn.internal.objects.NativeRegExp.source;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author jeferson
 */
public class ControladorProyectos {

    public JSONObject listarProyectos(String idGrupoSemillero, String tipoSesion, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyectoResponsable/"+idGrupoSemillero+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;    
    }

    public JSONObject cargarInfoFormRegistroProyectos(String token, String tipoSesion, String id) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/lineasGrupoTipoProyectoGrupo/"+id+"/session/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }

    public int registrarProyecto(String idGrupoSemillero, String titulo, String linea, String tiempo, String fechaInicio, String fechaFin, 
            String costo, String tipoProyecto, String resumen, String objGeneral, String resEsperados, String[] objEspecificos, 
            String numContrato, String token, String tipoSesion) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/proyecto");
        requestBuilder.addParameter("titulo", titulo);
        requestBuilder.addParameter("id_linea", linea);
        requestBuilder.addParameter("tiempo_ejecucion", tiempo);
        requestBuilder.addParameter("fecha_inicio", fechaInicio);
        requestBuilder.addParameter("fecha_final", fechaFin);
        requestBuilder.addParameter("costo", costo);
        requestBuilder.addParameter("id_tipo", tipoProyecto);
        requestBuilder.addParameter("resumen", resumen);
        requestBuilder.addParameter("objetivo_general", objGeneral);
        requestBuilder.addParameter("resultados_esperados", resEsperados);
        requestBuilder.addParameter("n_contrato", numContrato);
        requestBuilder.addParameter("token", token);
        requestBuilder.addParameter("tipoSession", tipoSesion);
        requestBuilder.addParameter("idGrupoSemillero", idGrupoSemillero);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity()); 
//        System.out.println(source);
        int id = -1;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            id = new JSONObject(source).getJSONObject("proyecto").getInt("id"); 
            HttpClient httpClient1 = HttpClients.createDefault();            
            for (String obj : objEspecificos) {    
                RequestBuilder request = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/objetivoEspecifico");
                request.addParameter("idProyecto", id+"");
                request.addParameter("nombre", obj);
                HttpUriRequest uri = request.build();        
                HttpResponse response = httpClient1.execute(uri); 
                String s = EntityUtils.toString(response.getEntity());
                System.out.println("------------------------------------------");
                System.out.println(obj);
                System.out.println(s);   
                System.out.println("status: " + response.getStatusLine().getStatusCode());
                if (response.getStatusLine().getStatusCode() != 201) {
                    System.out.println("entro al if");
                    id = -1;
                    break;
                }
            }
        }        
        return id;
    }

    public JSONArray consultarProyecto(String idProject, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyecto/"+idProject);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                 
        }        
        return jsonObj;
    }
    
    public JSONArray listarObjetivos(String idProject) throws IOException, JSONException {
         HttpClient httpClient1 = HttpClients.createDefault();
        HttpGet httpGet1 = new HttpGet("https://productividadufps.herokuapp.com/api/v1/objetivoProyecto/"+idProject);
        HttpResponse httpResponse1 = httpClient1.execute(httpGet1);
        JSONArray jsonObj1 = null;
        String source1 = EntityUtils.toString(httpResponse1.getEntity());
        System.out.println(source1);
        if ( httpResponse1.getStatusLine().getStatusCode() == 200 || httpResponse1.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj1 = new JSONArray(source1);  
            System.out.println(source1);
        } 
        return jsonObj1;
    }

    public boolean cerrarProyecto(String id_project, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpPut httpPut = new HttpPut("https://productividadufps.herokuapp.com/api/v1/proyecto/"+id_project);
        HttpResponse httpResponse = httpClient.execute(httpPut);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 );
    }

    
    
}
