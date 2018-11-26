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
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author jeferson
 */
public class ControladorProductos {

    

    public JSONObject cargarDatosRegistroProductos() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/#");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj;    
    }

    public JSONObject listarProductosProyecto(String id_proyecto) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/productos/"+id_proyecto);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONObject jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONObject(source);                        
        }        
        return jsonObj; 
    }
    
}
