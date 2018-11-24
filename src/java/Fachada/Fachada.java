/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Fachada;

import Controller.*;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author fasap
 */
public class Fachada {
    
    private ControladorFacultad controladorFacultad;
    private ControladorSemillero controladorSemillero;
    private ControladorGrupos controladorGrupos;  
    private ControladorProyectos controladorProyectos;
    private ControladorPlanAccion controladorPlanAccion;
    private ControladorLogin controladorLogin;
    private ControladorPlanAccionSemillero controladorPlanAccionSemillero;
    
    
    
    public JSONObject iniciarSesion(String user, String pass) throws IOException, JSONException {
        controladorLogin = new ControladorLogin();
        return controladorLogin.iniciarSesion(user, pass);
    }
    
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
    public JSONObject listarProyectos(String idGrupoSemillero, String tipoSesion, String token) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.listarProyectos(idGrupoSemillero, tipoSesion, token);
    }
    
    public JSONObject cargarInfoFormRegistroProyectos(String token, String tipoSesion, String id) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.cargarInfoFormRegistroProyectos(token, tipoSesion, id);
    }
    
    public int registrarProyecto(String idGrupoSemillero, String titulo, String linea, String tiempo, String fechaInicio, String fechaFin, String costo, 
            String tipoProyecto, String resumen, String  objGeneral, String resEsperados, String[] objEspecificos, 
            String numContrato, String token, String tipoSesion) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.registrarProyecto(idGrupoSemillero, titulo, linea, tiempo, fechaInicio, fechaFin, costo, tipoProyecto, resumen, 
                                objGeneral, resEsperados, objEspecificos, numContrato, token, tipoSesion);
    }
    
    public JSONObject consultarProyecto(String idProject, String token) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.consultarProyecto(idProject, token);
    }
    
    public boolean cerrarProyecto(String id_project, String token) throws IOException, JSONException {
        controladorProyectos = new ControladorProyectos();
        return controladorProyectos.cerrarProyecto(id_project, token);
    }
    
    // Metodos de Planes de Accion Grupo**********************************************************************************************
    public JSONObject listarPlanesAccion(String token, String id) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.listarPlanesAccion(token, id);
    }
    
    public JSONObject cargarInfoForm(String token, String idGrupo, String tipoSesion) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.cargarInfoForm(token, idGrupo, tipoSesion);
    }
    
    public JSONObject registrarInicialPlanAccionGrupo(String año, String semestre, String id_grupo, String tipoSesion, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.registrarInicialPlanAccionGrupo(año, semestre, id_grupo, tipoSesion, token);
    }
    
    public JSONObject consultarPlanAccionGrupo(String año, String semestre, String id_grupo, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.consultarPlanAccionGrupo(año, semestre, id_grupo, token);
    }
    
    public boolean vincularProyectoPlanGrupo(String año, String semestre, String id_grupo, String id_proyecto, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.vincularProyectoPlanGrupo(año, semestre, id_grupo, id_proyecto, token);
    }
    
    public boolean registrarEventoPlanAccionGrupo(String año, String semestre, String id_grupo, String evento, String caracterEvento,
            String responsables[], String fechaIni, String fechFin, String[] intPromotoras, String[] entidades, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.registrarEventoPlanAccionGrupo(año, semestre, id_grupo, evento, caracterEvento, responsables, fechaIni, 
                    fechFin, intPromotoras, entidades, token);
    }
    
    public boolean registrarActividadPlanAccionGrupo(String año, String semestre, String id_grupo, String actividad, String[] respAct,
            String fechaInicio, String fechFinal, String producto, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.registrarActividadPlanAccionGrupo(año, semestre, id_grupo, actividad, respAct, fechaInicio, fechFinal, 
                    producto, token);
    }
    
    public boolean registroAvanceActividadPlan(String año, String semestre, String id_grupo, String id_actividad, String porcentaje, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.registroAvanceActividadPlan(año, semestre, id_actividad, porcentaje, id_grupo, token);
    }
    
    public boolean registroAvanceEventoPlan(String año, String semestre, String id_grupo, String id_evt, String porcentaje, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.registroAvanceEventoPlan(año, semestre, id_evt, porcentaje, id_grupo, token);
    }
    
    // Metodos de Semilleros *********************************************************************************************************
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
    
    public JSONObject listarPlanesAccionSemillero(String idSemillero, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.listarPlanesAccionSemillero(idSemillero, token);
    }
    
    public JSONObject cargarInfo(String idSemillero, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.cargarInfo(idSemillero, token);
    }
    
    public boolean vincularProyectoPlanSemillero(String anio, String semestre, String idSemillero, String idProyecto, String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.vincularProyectoPlanSemillero(anio, semestre, idSemillero, idProyecto, token);
    }
    
    public boolean registrarCapacitacionPlanAccionSemillero(String anio, String semestre, String idSemillero, String lineaInvestigacion, String nombreCapacitacion, String objetivoCapacitacion, String fechaRealizacion, String numAsistentes, String responsables[],
    String nombreEvidencia, String file[], String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarCapacitacionPlanAccionSemillero(anio, semestre, idSemillero, lineaInvestigacion, nombreCapacitacion, objetivoCapacitacion, fechaRealizacion,
                numAsistentes, responsables, nombreEvidencia, file, token);
    }
    
    public boolean registrarActividadPlanAccionSemillero(String anio, String semestre, String idSemillero, String actividad, String[] responsablesAct, String fechaRealizacion, String producto, String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarActividadPlanAccionSemillero(anio, semestre, idSemillero, actividad, responsablesAct, fechaRealizacion, producto, token);
    }
    
    public JSONObject registrarPlanAccionSemillero(String anio, String semestre, String idSemillero, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarPlanAccionSemillero(anio, semestre, idSemillero, token);
    }
}
