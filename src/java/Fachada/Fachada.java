/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fachada;

import Controller.ControladorFacultad;
import Controller.ControladorSemillero;
import java.awt.LinearGradientPaint;
import java.io.IOException;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author fasap
 */
public class Fachada {
    
    private ControladorFacultad controladorFacultad;
    private ControladorSemillero controladorSemillero;
    
    
    
    public boolean registrarFacultad (String codigo, String nombre) throws IOException {
        controladorFacultad = new ControladorFacultad();
        return controladorFacultad.registrarFacultad(codigo, nombre);
    }
    
    public boolean eliminarFacultad (String codigo) throws IOException {
        controladorFacultad = new ControladorFacultad();
        return controladorFacultad.eliminarFacultad(codigo);
    
    }
    
    public ArrayList<JSONObject> listarFacultades () throws IOException, JSONException {
        controladorFacultad = new ControladorFacultad();
        return controladorFacultad.listarFacultad();
    
    }
    
    public int registrarSemillero(String nombreSemillero, String sigla, String ubicacion, String fechaCreacion, String grupoPertenece,
    String[] directores, String lineaInvestigacion, String descripcion) throws IOException, JSONException{
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.registrarSemillero(nombreSemillero, sigla, ubicacion, fechaCreacion, grupoPertenece, directores, lineaInvestigacion, descripcion);
    }
}
