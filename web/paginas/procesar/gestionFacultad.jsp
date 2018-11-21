<%-- 
    Document   : prueba
    Created on : 17/11/2018, 04:54:23 PM
    Author     : jeferson
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Fachada.Fachada"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%
    
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    System.out.println(operacion);
    Fachada f = new Fachada();
    switch (operacion) {
        // Registrar
        case 1 : 
            String codigo = request.getParameter("codigo");
            String nombre = request.getParameter("nombre");            
            if (f.registrarFacultad(codigo, nombre)) {
                session.setAttribute("resultad", "Se ha registrado la facultad");
                System.out.println("entro aca");
            }
            else {
                System.out.println("no le entro");
            }
            break;
        // Eliminar
        case 2 :
            System.out.println("llego");
            String id = request.getParameter("id");
            if (f.eliminarFacultad(id)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 3 :
            ArrayList<JSONObject> facultades = f.listarFacultades();
            session.setAttribute("facultades", facultades);
            response.sendRedirect("../facultad.jsp");
            break;
    }
    
    
    
    
    
%>
