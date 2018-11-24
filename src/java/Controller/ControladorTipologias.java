
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


public class ControladorTipologias {
    
    //TIPOLOGIAS
    
    public boolean registrarTipologias (String token,String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();    

        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/tipologia");
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }

    public boolean eliminarTipologias(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/tipologia/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }

    public ArrayList<JSONObject> listarTipologias() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/tipologia");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("tipologiasProducto");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
    
    //SUBTIPOLOGIAS
     public boolean registrarSubtipologia (String token,String tipologia, String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();    
        NameValuePair value1 = new BasicNameValuePair("tipologia", tipologia);
        NameValuePair value2 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/subtipologia");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }
     
        public boolean eliminarSubtipologia(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/subtipologia/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }
        
           public ArrayList<JSONObject> listarSubtipologias() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/subtipologia");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("subtipologiaProducto");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    }
           
           //TIPO PRODUCTOS
           
              public boolean registrarTipoProducto (String token,String tipologia,String subtipologia, String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();    
        NameValuePair value1 = new BasicNameValuePair("tipologia", tipologia);
        NameValuePair value2 = new BasicNameValuePair("subtipologia", subtipologia); 
        NameValuePair value3 = new BasicNameValuePair("nombre", nombre);     
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/tipoproducto");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter(value3);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }
     
        public boolean eliminarTipoProducto(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/tipoproducto/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }
        
           public ArrayList<JSONObject> listarTipoProducto() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/tipoproducto");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("tiposProducto");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    } 
           
                    //CATEGORIAS PRODUCTOS
           
              public boolean registrarCategoriaProducto (String token,String tipologia,String subtipologia,
                      String tipo,String nombre) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();    
        NameValuePair value1 = new BasicNameValuePair("tipologia", tipologia);
        NameValuePair value2 = new BasicNameValuePair("subtipologia", subtipologia); 
        NameValuePair value3 = new BasicNameValuePair("nombre", nombre);   
        NameValuePair value4 = new BasicNameValuePair("tipo", tipo);
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/CategoriaProducto");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter(value3);
        requestBuilder.addParameter(value4);
        requestBuilder.addParameter("token", token);
        HttpUriRequest uriRequest = requestBuilder.build();        
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 201;
    }
     
        public boolean eliminarCategoriaProducto(String codigo) throws IOException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpDelete httpDelete = new HttpDelete("https://productividadufps.herokuapp.com/api/v1/CategoriaProducto/"+codigo);
        HttpResponse httpResponse = httpClient.execute(httpDelete);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        return httpResponse.getStatusLine().getStatusCode() == 200;
    }
        
           public ArrayList<JSONObject> listarCategoriaProducto() throws IOException, JSONException {
        ArrayList<JSONObject> lista = new ArrayList<>();
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/CategoriaProducto");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject json = new JSONObject(source);
        JSONArray array = json.getJSONArray("categoriaProducto");
        for (int i=0; i<array.length(); i++) {
            lista.add(array.getJSONObject(i));
        }
        return lista;
    } 
}
