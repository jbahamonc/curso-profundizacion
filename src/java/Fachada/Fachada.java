/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fachada;

import Controller.ControladorCategorias;
import Controller.ControladorFacultad;
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
    private ControladorCategorias controladorCategorias;
    
    
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
    
    
    
    //METODOS CATEGORIA DEDICACION DOCENTE
      public boolean registrarCategoriaDedicacion (String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorCategorias.registrarCategoriaDedicacion(nombre);
    }
    
    public boolean eliminarCategoriaDedicacion (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorCategorias.eliminarCategoriaDedicacion(codigo);
    
    }
    
    public ArrayList<JSONObject> listarCategoriaDedicacion () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorCategorias.listarCategoriasDedicacion();
    
    }
    
    
        
    //METODOS CATEGORIA DOCENTE
      public boolean registrarCategoriaDocente (String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorCategorias.registrarCategoriaDedicacion(nombre);
    }
    
    public boolean eliminarCategoriaDocente (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorCategorias.eliminarCategoriaDedicacion(codigo);
    
    }
    
    public ArrayList<JSONObject> listarCategoriaDocente () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorCategorias.listarCategoriasDedicacion();
    
    }
}
