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
    private ControladorSemillero controladorSemillero;
    private ControladorGrupos controladorGrupos;  
    private ControladorProyectos controladorProyectos;
    private ControladorPlanAccion controladorPlanAccion;
    private ControladorLogin controladorLogin;
    private ControladorPlanAccionSemillero controladorPlanAccionSemillero;
    private ControladorProductos controlProductos;
    
    
    
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
    
    public JSONObject listarGruposCategorias() throws IOException, JSONException {
        controladorGrupos = new ControladorGrupos();
        return controladorGrupos.listarGruposCategorias();
    
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
    
    public JSONArray consultarProyecto(String idProject, String token) throws IOException, JSONException {
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
    
    public boolean vincularProyectosNuevosViejos(String año, String semestre, String id_grupo, String id_pro, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.vincularProyectosNuevosViejos(año, semestre, id_grupo, id_pro, token);
    }
    
    public boolean vincularActividadesAntiguasPlanGrupo(String año, String semestre, String id_grupo, String id_act, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.vincularActividadesAntiguasPlanGrupo(año, semestre, id_grupo, id_act, token);
    }
    
    public boolean vincularEventosAntiguosPlanGrupo(String anio, String semestre, String id_grupo, String id_evt, String token) throws IOException, JSONException {
        controladorPlanAccion = new ControladorPlanAccion();
        return controladorPlanAccion.vincularEventosAntiguosPlanGrupo(anio, semestre, id_grupo, id_evt, token);
    }
    
    // Metodos de Semilleros *********************************************************************************************************
    public int registrarSemillero(String codigo, String nombreSemillero, String sigla, String ubicacion, String fechaCreacion,
    int idDirector, int idLineaInvestigacion, String email, int idGrupo) throws IOException, JSONException{
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
    public JSONArray consultarSemillero(String idSemillero, String token) throws IOException, JSONException {
        controladorSemillero = new ControladorSemillero();
        return controladorSemillero.consultarSemillero(idSemillero, token);
    
    }
    
    public JSONArray listarPlanesAccionSemillero(String idSemillero, String tipoSesion, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.listarPlanesAccionSemillero(idSemillero, tipoSesion, token);
    }
    
    public JSONObject cargarInfo(String idSemillero, String tipoSesion, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.cargarInfo(idSemillero, tipoSesion, token);
    }
    
    public boolean vincularProyectoPlanSemillero(String anio, String semestre, String idSemillero, String idProyecto, String tipoSesion, String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.vincularProyectoPlanSemillero(anio, semestre, idSemillero, idProyecto, tipoSesion, token);
    }
    
    public boolean registrarCapacitacionPlanAccionSemillero(String anio, String semestre, String idSemillero, String nombreCapacitacion, String objetivoCapacitacion, String fechaInicio, String fechaFinal, String numAsistentes, String responsables[],
     String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarCapacitacionPlanAccionSemillero(anio, semestre, idSemillero, nombreCapacitacion, objetivoCapacitacion, fechaInicio, fechaFinal,
                numAsistentes, responsables, token);
    }
    
    public boolean registrarActividadPlanAccionSemillero(String anio, String semestre, String idSemillero, String actividad, String[] responsablesAct, String fechaInicio, String fechaFinal, String producto, String tipoSesion, String token) throws IOException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarActividadPlanAccionSemillero(anio, semestre, idSemillero, actividad, responsablesAct, fechaInicio, fechaFinal, producto, tipoSesion, token);
    }
    
    public JSONObject registrarPlanAccionSemillero(String anio, String semestre, String idSemillero, String tipoSesion, String token) throws IOException, JSONException{
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.registrarPlanAccionSemillero(anio, semestre, idSemillero, tipoSesion, token);
    }
    
    // Metodos de productos *********************************************************************************************************
    
    public JSONArray cargarDatosRegistroProductosTipologi1() throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.cargarDatosRegistroProductosTipologi1();
    }
    
    public JSONArray listarProductosProyecto(String id_proyecto) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.listarProductosProyecto(id_proyecto);
    }
    
    public JSONArray cargarSubtipologia(String id_tipologia) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.cargarSubtipologia(id_tipologia);
    }
    
    public JSONArray cargarTipoProductos(String id_subtipologia) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.cargarTipoProductos(id_subtipologia);
    }
    
    public JSONArray cargarCategoriasTipoProductos(String id_catProducto) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.cargarCategoriasTipoProductos(id_catProducto);
    }
    
    public JSONObject registrarArticulo(String id_proyecto, String nombrePro, String descPro,String tipoPro,String 
            tipoArti,String nombreArt,String title, String anio,String mes,String volumen, String numeroArt, String pIni, String pFin,
            String issn, String website, String doi) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.registrarArticulo(id_proyecto, nombrePro,descPro,tipoPro,tipoArti,nombreArt,title,anio,mes,volumen,numeroArt,pIni,pFin,issn,website,doi);
    }
    
    public JSONObject registrarCapitulo(String id_proyecto,String nombrePro,String descPro,String id_tipoPro,String tituloLibro,String tituloCap,
            String fechaPubli,String autor,String editorial,String lugarPubli,String certEntidad,String curriculo,String tipoDesarrollo, String isbn) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.registrarCapitulo(id_proyecto,nombrePro,descPro,id_tipoPro,tituloLibro, tituloCap,fechaPubli,autor,editorial,lugarPubli,
                        certEntidad,curriculo, tipoDesarrollo, isbn);
    }
    
    public JSONObject registrarLibro(String id_proyecto,String nombrePro,String descPro,String id_tipoPro,String fechaPubli,String autor,
            String editorial,String lugarPubli,String certEntidad,String curriculo,String tipoDesarrollo, String isbn, String titulo) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.registrarLibro(id_proyecto,nombrePro,descPro,id_tipoPro,fechaPubli,autor,editorial,lugarPubli,
                        certEntidad,curriculo, tipoDesarrollo, isbn, titulo);
    }
    
    public JSONObject registrarSoftware(String id_proyecto,String nombrePro,String descPro,String id_tipoPro, String dnda,String anioObtencion,
            String analisis,String diseño,String implementacion,String validacion) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.registrarSoftware(id_proyecto,nombrePro,descPro,id_tipoPro,dnda,anioObtencion,analisis,diseño,implementacion,validacion);
    }
    
    public JSONObject registrarTesis(String id_proyecto,String nombrePro,String descPro,String id_tipoPro,String titulo,String anio, String institucion,String reco) throws IOException, JSONException{
        controlProductos = new ControladorProductos();
        return controlProductos.registrarTesis(id_proyecto,nombrePro,descPro,id_tipoPro,titulo,anio,institucion,reco);
    }
    
    public boolean vincularProyectosNuevosViejosSemillero(String anio, String semestre, String idSemillero, String id_pro, String token) throws IOException, JSONException {
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.vincularProyectosNuevosViejosSemillero(anio, semestre, idSemillero, id_pro, token);
    }
    
    public boolean vincularActividadesAntiguasPlanSemillero(String anio, String semestre, String idSemillero, String id_act, String token) throws IOException, JSONException {
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.vincularActividadesAntiguasPlanSemillero(anio, semestre, idSemillero, id_act, token);
    }
    
    
    public boolean vincularCapacitacionesAntiguosPlanSemillero(String anio, String semestre, String idSemillero, String id_cap, String token) throws IOException, JSONException {
        controladorPlanAccionSemillero = new ControladorPlanAccionSemillero();
        return controladorPlanAccionSemillero.vincularCapacitacionesAntiguosPlanSemillero(anio, semestre, idSemillero, id_cap, token);
    }
    
}
