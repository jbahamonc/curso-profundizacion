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
import org.apache.http.client.methods.HttpPut;
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
public class ControladorProyectos {

    public JSONObject listarProyectos(String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyecto");
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
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/nombre/"+tipoSesion);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
    }

    public int registrarProyecto(String titulo, String linea, String tiempo, String fechaInicio, String fechaFin, 
            String costo, String tipoProyecto, String resumen, String objGeneral, String resEsperados, String objEspecificos[], 
            String numContrato, String token, String tipoSesion) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/proyecto");
        requestBuilder.addParameter("titulo", titulo);
        requestBuilder.addParameter("linea", linea);
        requestBuilder.addParameter("tiempo", tiempo);
        requestBuilder.addParameter("fechaInicio", fechaInicio);
        requestBuilder.addParameter("fechaFin", fechaFin);
        requestBuilder.addParameter("costo", costo);
        requestBuilder.addParameter("tipoProyecto", tipoProyecto);
        requestBuilder.addParameter("resumen", resumen);
        requestBuilder.addParameter("objGeneral", objGeneral);
        requestBuilder.addParameter("resEsperados", resEsperados);
        requestBuilder.addParameter("numContrato", numContrato);
        requestBuilder.addParameter("token", token);
        requestBuilder.addParameter("tipoSesion", tipoSesion);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest); 
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        int id = -1;
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            id = new JSONObject(source).getInt("id"); 
            for (String obj : objEspecificos) {
                RequestBuilder request = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/objetivos");
                request.addParameter("id", id+"");
                request.addParameter("objetivo", obj);
                HttpUriRequest uri = request.build();        
                HttpResponse response = httpClient.execute(uri); 
                if (response.getStatusLine().getStatusCode() != 200 || response.getStatusLine().getStatusCode() != 201) {
                    id = -1;
                    break;
                }
//                String json = EntityUtils.toString(response.getEntity());
//                System.out.println(json);
            }
        }        
        return id;
    }

    public JSONObject consultarProyecto(String idProject, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/proyecto/"+idProject);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;
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
