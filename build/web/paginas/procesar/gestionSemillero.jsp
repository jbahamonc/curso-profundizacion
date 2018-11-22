<%-- 
    Document   : gestionSemillero
    Created on : 18-nov-2018, 16:04:10
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Fachada.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    System.out.println(operacion);
    Fachada fachada = new Fachada();

    switch (operacion) {
        case 1: //REGISTRAR
            String nombreSemillero = request.getParameter("nombre");
            String siglas = request.getParameter("sigla");
            String ubicacion = request.getParameter("ubicacion");
            String fechaCreacion = request.getParameter("fechaCreacion");
            String[] directores = request.getParameterValues("directores");
            String lineaInvestigacion = request.getParameter("lineaInvestigacion");
            String descripcion = request.getParameter("descripcion");

            int valorId = fachada.registrarSemillero(nombreSemillero, siglas, ubicacion, fechaCreacion, directores, lineaInvestigacion, descripcion);
            JSONObject valor = new JSONObject();
            if (valorId > 0) {
                valor.put("id", valorId);
                valor.put("status", "200");
            } else {
                valor.put("status", "500");
            }
            out.print(valor);
            break;
        case 2: //LISTAR
            ArrayList<JSONObject> semilleros = fachada.listarFacultades();
            session.setAttribute("semilleros", semilleros);
            response.sendRedirect("../semillerosInvestigacion.jsp");
            break;

        case 3: //ELIMINAR
            String id = request.getParameter("id");
            if (fachada.eliminarSemillero(id)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
            
        case 4: //LISTAR DIRECTORES Y LINEAS DE INVESTIGACION
            ArrayList<JSONObject> listaDirectores = fachada.listarDirectores();
            ArrayList<JSONObject> listaLineasInvestigacion = fachada.listarLineasInvestigacion();
            session.setAttribute("directores", listaDirectores);
            session.setAttribute("lineasInvestigacion", listaLineasInvestigacion);
            response.sendRedirect("../registroSemillero.jsp");
            break;
            
    }


%>
