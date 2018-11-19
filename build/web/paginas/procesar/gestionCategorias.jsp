<%-- 
    Document   : prueba
    Created on : 17/11/2018, 04:54:23 PM
    Author     : jeferson
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Fachada.Fachada"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.apache.http.util.EntityUtils"%>
<%@page import="org.apache.http.HttpResponse"%>
<%@page import="org.apache.http.client.methods.HttpGet"%>
<%@page import="org.apache.http.impl.client.HttpClients"%>
<%@page import="org.apache.http.client.HttpClient"%>
<%
    
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    System.out.println(operacion);
    Fachada f = new Fachada();
    switch (operacion) {
        // Registrar
        case 1 : 
            
            String nombre = request.getParameter("nombre");            
            if (f.registrarCategoriaDedicacion(nombre)) {
                session.setAttribute("resultad", "Se ha registrado la Categoria de Dedicacion Docente");
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
            if (f.registrarCategoriaDedicacion(id)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 3 :
            ArrayList<JSONObject> cdedicacion = f.listarCategoriaDedicacion();
            session.setAttribute("categoriadedicacion", cdedicacion);
            response.sendRedirect("../categoriaDedicacion.jsp");
            break;
            
         case 4 : 
            
            String nombre2 = request.getParameter("nombre");            
            if (f.registrarCategoriaDedicacion(nombre2)) {
                session.setAttribute("resultad", "Se ha registrado la Categoria de Dedicacion Docente");
                System.out.println("entro aca");
            }
            else {
                System.out.println("no le entro");
            }
            break;
        // Eliminar
        case 5 :
            System.out.println("llego");
            String id2 = request.getParameter("id");
            if (f.registrarCategoriaDedicacion(id2)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 6 :
            ArrayList<JSONObject> cdocente = f.listarCategoriaDedicacion();
            session.setAttribute("categoriadedicacion", cdocente);
            response.sendRedirect("../categoriaDedicacion.jsp");
            break;
    }
    
    
    
    
    
%>

