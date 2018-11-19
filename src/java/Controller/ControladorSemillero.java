/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.methods.RequestBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author fasap
 */
public class ControladorSemillero {

    public int registrarSemillero(String nombreSemillero, String sigla, String ubicacion, String fechaCreacion, String grupoPertenece, String[] directores, String lineaInvestigacion, String descripcion) throws IOException, JSONException {
        HttpClient httpClient = HttpClients.createDefault();
        NameValuePair value1 = new BasicNameValuePair("nombreSemillero", nombreSemillero);
        NameValuePair value2 = new BasicNameValuePair("sigla", sigla);
        NameValuePair value3 = new BasicNameValuePair("ubicacion", ubicacion);
        NameValuePair value4 = new BasicNameValuePair("fechaCreacion", fechaCreacion);
        NameValuePair value5 = new BasicNameValuePair("grupoPertenece", grupoPertenece);
        NameValuePair value6 = new BasicNameValuePair("lineaInvestigacion", lineaInvestigacion);
        NameValuePair value7 = new BasicNameValuePair("descripcion", descripcion);
        RequestBuilder requestBuilder = RequestBuilder.post().setUri("#");
        requestBuilder.addParameter(value1);
        requestBuilder.addParameter(value2);
        requestBuilder.addParameter(value3);
        requestBuilder.addParameter(value4);
        requestBuilder.addParameter(value5);
        requestBuilder.addParameter(value6);
        requestBuilder.addParameter(value7);

        HttpUriRequest uriRequest = requestBuilder.build();
        HttpResponse httpResponse = httpClient.execute(uriRequest);
        String source = EntityUtils.toString(httpResponse.getEntity());
        System.out.println(source);
        JSONObject obj = new JSONObject(source);

        if (httpResponse.getStatusLine().getStatusCode() == 200 || httpResponse.getStatusLine().getStatusCode() == 201) {
            HttpClient httpClient2 = HttpClients.createDefault();
            for (int i = 0; i < directores.length; i++) {
                NameValuePair valorDirector = new BasicNameValuePair("director", directores[i]);
                NameValuePair idSemillero = new BasicNameValuePair("idSemillero", obj.getInt("id") + "");
                RequestBuilder requestBuilder2 = RequestBuilder.post().setUri("#");
                requestBuilder2.addParameter(valorDirector);
                requestBuilder2.addParameter(idSemillero);
                HttpUriRequest uriRequest2 = requestBuilder2.build();
                HttpResponse httpResponse2 = httpClient2.execute(uriRequest2);
                if (httpResponse2.getStatusLine().getStatusCode() != 200 || httpResponse2.getStatusLine().getStatusCode() != 201) {
                    return -1;
                }
            }
            return obj.getInt("id");
        } else {
            return -1;
        }

    }

}
