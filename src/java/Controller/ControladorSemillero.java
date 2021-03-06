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
 * @author fasap
 */
public class ControladorSemillero {

    public int registrarSemillero(String codigo, String nombreSemillero, String sigla, String ubicacion, String fechaCreacion, int idDirector, int idLineaInvestigacion, String email, int idGrupo) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        
        NameValuePair value1 = new BasicNameValuePair("codigo", codigo);
        NameValuePair value2 = new BasicNameValuePair("nombre", nombreSemillero);
        NameValuePair value3 = new BasicNameValuePair("sigla", sigla);
        NameValuePair value4 = new BasicNameValuePair("ubicacion", ubicacion);
        NameValuePair value5 = new BasicNameValuePair("fecha_creacion", fechaCreacion);
        NameValuePair value6 = new BasicNameValuePair("idGrupo", ""+idGrupo);
        NameValuePair value7 = new BasicNameValuePair("correo", email);
        NameValuePair value8 = new BasicNameValuePair("idLinea", ""+idLineaInvestigacion);
        NameValuePair value9 = new BasicNameValuePair("id_director", ""+idDirector);       
        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/semillero");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter(value3);
        requestBuilder.addParameter(value4);
        requestBuilder.addParameter(value5);
        requestBuilder.addParameter(value6);
        requestBuilder.addParameter(value7);
        requestBuilder.addParameter(value8);
        requestBuilder.addParameter(value9);

        HttpUriRequest uriRequest = requestBuilder.build();
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        System.out.println(httpResponse.getStatusLine().getStatusCode());

        if (httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201) {
            JSONObject obj = new JSONObject(source);
            System.out.println("**** " +obj.getJSONObject("semillero").getInt("id"));
            return obj.getJSONObject("semillero").getInt("id");
        } else {
            return -1;
        }

    }

    public JSONObject listarSemillero() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/datosSemilleroDirector");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject semillero = null;
        if (httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201) {
            String source = EntityUtils.toString(httpResponse.getEntity());
            semillero = new JSONObject(source);
        }
        return semillero;
    }

    public boolean eliminarSemillero(String idSemillero) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("#" + idSemillero);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public JSONObject listarDirectoresYLineasInvestigacion(int idGrupo) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/lineaGrupoDocenteGrupo/"+idGrupo);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject listarDirectoresYLineasInvestigacion = null;
        String source = "";
        if (httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201) {
            source = EntityUtils.toString(httpResponse.getEntity());
            System.out.println(source);
            listarDirectoresYLineasInvestigacion = new JSONObject(source);
        }
        return listarDirectoresYLineasInvestigacion;
    }

    public JSONArray consultarSemillero(String idSemillero, String token) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/semillero/"+idSemillero);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonSemillero = null;
        String source = "";
        if (httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201) {
            source = EntityUtils.toString(httpResponse.getEntity());
            System.out.println("**" + source);
            jsonSemillero = new JSONArray(source);
        }
        return jsonSemillero;
    }

}
