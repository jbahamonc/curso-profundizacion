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
 * @author jeferson
 */
public class ControladorProductos {

    

    public JSONArray cargarDatosRegistroProductosTipologi1() throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/tipologiaProductos1");
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                        
        }        
        return jsonObj;    
    }

    public JSONArray listarProductosProyecto(String id_proyecto) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/productoProy/"+id_proyecto);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                        
        }        
        return jsonObj; 
    }

    public JSONArray cargarSubtipologia(String id_tipologia) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/tipologiaProductos2/"+id_tipologia);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                        
        }        
        return jsonObj;  
    }

    public JSONArray cargarTipoProductos(String id_subtipologia) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/tipologiaProductos3/"+id_subtipologia);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                        
        }        
        return jsonObj;  
    }

    public JSONArray cargarCategoriasTipoProductos(String id_catProducto) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet("https://productividadufps.herokuapp.com/api/v1/categoriaProducto3/"+id_catProducto);
        HttpResponse httpResponse = httpClient.execute(httpGet);
        JSONArray jsonObj = null;
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        if ( httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201 ) {            
            jsonObj = new JSONArray(source);                        
        }        
        return jsonObj;
    }

    public JSONObject registrarArticulo(String id_proyecto, String nombrePro, String descPro, String id_tipoPro, 
            String tipoArti, String nombreRevista, String title, String anio, String mes, String volumen, String numeroArt, String pIni, 
            String pFin, String issn, String website, String doi) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/articulo");
        requestBuilder.addParameter("nombre", nombrePro);
        requestBuilder.addParameter("descripcion", descPro);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("id_tipo_producto", id_tipoPro);
        requestBuilder.addParameter("tipo_referencia", tipoArti);
        requestBuilder.addParameter("nombre_revista", nombreRevista);
        requestBuilder.addParameter("titulo_articulo", title);
        requestBuilder.addParameter("autores", "");
        requestBuilder.addParameter("anio", anio);
        requestBuilder.addParameter("mes", mes);
        requestBuilder.addParameter("volumen", volumen);
        requestBuilder.addParameter("numero", numeroArt);
        requestBuilder.addParameter("paginas_ini", pIni);
        requestBuilder.addParameter("paginas_final", pFin);
        requestBuilder.addParameter("ISSN", issn);
        requestBuilder.addParameter("paginaWeb", website);
        requestBuilder.addParameter("DOI", doi);
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

    public JSONObject registrarCapitulo(String id_proyecto, String nombrePro, String descPro, String id_tipoPro, String tituloLibro, 
            String tituloCap, String fechaPubli, String autor, String editorial, String lugarPubli, String certEntidad, 
            String curriculo, String tipoDesarrollo, String isbn) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/capitulo");
        requestBuilder.addParameter("nombre", nombrePro);
        requestBuilder.addParameter("descripcion", descPro);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("id_tipo_producto", id_tipoPro);
        requestBuilder.addParameter("titulo_libro", tituloLibro);
        requestBuilder.addParameter("titulo_capitulo", tituloCap);
        requestBuilder.addParameter("ISBN_librol", isbn);
        requestBuilder.addParameter("autores", autor);
        requestBuilder.addParameter("fecha_publica", fechaPubli);
        requestBuilder.addParameter("editorial", editorial);
        requestBuilder.addParameter("lugar_publica", lugarPubli);
        requestBuilder.addParameter("tipo_desarrollo_id", tipoDesarrollo);
        requestBuilder.addParameter("certificacion_entidad", certEntidad);
        requestBuilder.addParameter("curriculo_capitulo", curriculo);
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

    public JSONObject registrarLibro(String id_proyecto, String nombrePro, String descPro, String id_tipoPro, String fechaPubli, String autor, 
            String editorial, String lugarPubli, String certEntidad, String curriculo, String tipoDesarrollo, String isbn, String titulo) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/libro");
        requestBuilder.addParameter("nombre", nombrePro);
        requestBuilder.addParameter("descripcion", descPro);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("id_tipo_producto", id_tipoPro);
        requestBuilder.addParameter("titulo", titulo);
        requestBuilder.addParameter("ISBN", isbn);
        requestBuilder.addParameter("autores", autor);
        requestBuilder.addParameter("fecha_publica", fechaPubli);
        requestBuilder.addParameter("editorial", editorial);
        requestBuilder.addParameter("lugar_publica", lugarPubli);
        requestBuilder.addParameter("tipo_desarrollo", tipoDesarrollo);
        requestBuilder.addParameter("certificacion_entidad", certEntidad);
        requestBuilder.addParameter("curriculo", curriculo);
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

    public JSONObject registrarSoftware(String id_proyecto, String nombrePro, String descPro, String id_tipoPro, String dnda, String anioObtencion, 
            String analisis, String diseño, String implementacion, String validacion) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/productoCert");
        requestBuilder.addParameter("nombre", nombrePro);
        requestBuilder.addParameter("descripcion", descPro);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("id_tipo_producto", id_tipoPro);
        requestBuilder.addParameter("numero_registro", dnda);
        requestBuilder.addParameter("anio_obtencion", anioObtencion);
        requestBuilder.addParameter("descripcion_analisis", analisis);
        requestBuilder.addParameter("descripcion_diseno", diseño);
        requestBuilder.addParameter("descripcion_implementacion", implementacion);
        requestBuilder.addParameter("descripcion_validacion", validacion);
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

    public JSONObject registrarTesis(String id_proyecto, String nombrePro, String descPro, String id_tipoPro, String titulo, String anio, String institucion, String reco) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();        
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("https://productividadufps.herokuapp.com/api/v1/tesis");
        requestBuilder.addParameter("nombre", nombrePro);
        requestBuilder.addParameter("descripcion", descPro);
        requestBuilder.addParameter("id_proyecto", id_proyecto);
        requestBuilder.addParameter("id_tipo_producto", id_tipoPro);
        requestBuilder.addParameter("titulo", titulo);
        requestBuilder.addParameter("institucion", institucion);
        requestBuilder.addParameter("anio", anio);
        requestBuilder.addParameter("reconocimiento", reco);
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
    
}
