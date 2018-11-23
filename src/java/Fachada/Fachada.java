/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fachada;

import Controller.*;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author fasap
 */
public class Fachada {
    
    private ControladorFacultad controladorFacultad;
    private ControladorGrupos controladorGrupos;  
    private ControladorProyectos controladorProyectos;
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
    
    // Metodos de Grupos ***************************************************************************************************************************
    public int registrarGrupo (String nombre, String siglas, String tipoUnidad, String nombreUnidad, String ubicacion, 
                                    String fecha, String codigoGruplav, String clasificado, String categoria, String email, 
                                    String nombreDpto, String director) throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.registrarGrupo(nombre, siglas, tipoUnidad, nombreUnidad, ubicacion, fecha, codigoGruplav, clasificado, categoria, email, nombreDpto, director);
    
    }
    
    public JSONObject consultarGrupo(String id_grupo, String token) throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.consultarGrupo(id_grupo, token);
    
    }
    
    public JSONObject listarGrupos() throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.listarGrupos();
    
    }
    
    public JSONObject cargarInfoRegistroGrupos(String token) throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.cargarInfoRegistroGrupos(token);
    
    }
    
    public boolean eliminarGrupo(String idDel, String token) throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.eliminarGrupo(idDel, token);
    
    }
    
    // Metodos proyecto **********************************************************************************************
    public JSONObject listarProyectos(String token) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.listarProyectos(token);
    }
    
    public int registrarSemillero(String codigo, String nombreSemillero, String sigla, String ubicacion, String fechaCreacion,
    String idDirector, String idLineaInvestigacion, String email, String idGrupo) throws IOException, JSONException{
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.registrarSemillero(codigo, nombreSemillero, sigla, ubicacion, fechaCreacion, idDirector, idLineaInvestigacion, email, idGrupo);
    }
    
    public JSONObject listarSemilleros() throws IOException, JSONException{
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.listarSemillero();
    }
    
    public boolean eliminarSemillero(String idSemillero) throws IOException{
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.eliminarSemillero(idSemillero);
    }
    
    public JSONObject listarDirectoresYLineasInvestigacion(int idGrupo) throws IOException, JSONException{
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.listarDirectoresYLineasInvestigacion(idGrupo);
    }
    public JSONObject consultarSemillero(String idSemillero, String token) throws IOException, JSONException {
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.consultarSemillero(idSemillero, token);
    
    }
}
