/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fachada;

import Controller.ControladorCategorias;
import Controller.ControladorFacultad;
import Controller.ControladorTipologias;
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
    private ControladorTipologias controladorTipologias;
    
    
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
      public boolean registrarCategoriaDedicacion (String nombre, String token) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorCategorias.registrarCategoriaDedicacion(token,nombre);
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
      public boolean registrarCategoriaDocente (String token,String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorCategorias.registrarCategoriaDedicacion(token,nombre);
    }
    
    public boolean eliminarCategoriaDocente (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorCategorias.eliminarCategoriaDedicacion(codigo);
    
    }
    
    public ArrayList<JSONObject> listarCategoriaDocente () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorCategorias.listarCategoriasDedicacion();
    
    }
    
    //METODOS CATEGORIA Investigador
      public boolean registrarCategoriaInvestigador (String token,String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorCategorias.registrarCategoriaInvestigador(token,nombre);
    }
    
    public boolean eliminarCategoriaInvestigador (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorCategorias.eliminarCategoriaInvestigador(codigo);
    
    }
    
    public ArrayList<JSONObject> listarCategoriaInvestigador () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorCategorias.listarCategoriasInvestigador();
    
    }
    
    //METODOS TIPOLOGIA
      public boolean registrarTipologias (String token,String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorTipologias.registrarTipologias(token,nombre);
    }
    
    public boolean eliminarTipologias (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorTipologias.eliminarTipologias(codigo);
    
    }
    
    public ArrayList<JSONObject> listarTipologias () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorTipologias.listarTipologias();
    
    }
    
     //METODOS SUBTIPOLOGIA
      public boolean registrarSubtipologia (String token,String tipologia, String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorTipologias.registrarSubtipologia(token,tipologia,nombre);
    }
    
    public boolean eliminarSubtipologia (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorTipologias.eliminarSubtipologia(codigo);
    
    }
    
    public ArrayList<JSONObject> listarSubtipologias () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorTipologias.listarSubtipologias();
    
    }
    
    
      //METODOS TIPOLOGIA: TIPO PRODUCTO
      public boolean registrarTipoProducto (String token,String tipologia,String subtipologia, String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorTipologias.registrarTipoProducto(token,tipologia,subtipologia,nombre);
    }
    
    public boolean eliminarTipoProducto (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorTipologias.eliminarTipoProducto(codigo);
    
    }
    
    public ArrayList<JSONObject> listarTipoProducto () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorTipologias.listarTipoProducto();
    
    }
    
    
          //METODOS TIPOLOGIA: CATEGORIAS
      public boolean registrarCategoriaProducto (String token,String tipologia,String subtipologia,
              String tipo, String nombre) throws IOException {
        controladorCategorias = new ControladorCategorias();
        return controladorTipologias.registrarCategoriaProducto(token,tipologia,subtipologia,tipo,nombre);
    }
    
    public boolean eliminarCategoriaProducto (String codigo) throws IOException {
       controladorCategorias = new ControladorCategorias();
        return controladorTipologias.eliminarCategoriaProducto(codigo);
    
    }
    
    public ArrayList<JSONObject> listarCategoriaProducto () throws IOException, JSONException {
         controladorCategorias = new ControladorCategorias();
        return controladorTipologias.listarCategoriaProducto();
    
    }
}
