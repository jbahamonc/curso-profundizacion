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
    String token = "";
    switch (operacion) {
        
        //TIPOLOGIAS********************************************************************************
        // Registrar
        case 1 : 
            
            String nombre = request.getParameter("nombre"); 
            token = request.getParameter("token");
            if (f.registrarTipologias(token, nombre)) {
                session.setAttribute("resultad", "Se ha registrado la tipologia");
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
            if (f.eliminarTipologias(id)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 3 :
            ArrayList<JSONObject> tipologiasproducto = f.listarTipologias();
            session.setAttribute("tipologiasproducto", tipologiasproducto);
            response.sendRedirect("../tipologiasProducto.jsp");
            break;
          //SUBTIPOLOGIAS***************************************************************************************
         case 4 : 
            token = request.getParameter("token");
            String tipologia = request.getParameter("tipologia");
            String nombre2 = request.getParameter("nombre");            
            if (f.registrarSubtipologia(token, tipologia, nombre2)) {
                session.setAttribute("resultad", "Se ha registrado la subtipologia");
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
            if (f.eliminarSubtipologia(id2)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 6 :
            ArrayList<JSONObject> subtipologiaProducto = f.listarSubtipologias();
            session.setAttribute("subtipologiaProducto", subtipologiaProducto);
            response.sendRedirect("../subtipologiaProducto.jsp");
            break;
   
            // TIPOS PRODUCTOS*********************************************************************************
            
         case 7 : 
            token = request.getParameter("token");
            String tipologia3 = request.getParameter("tipologia");
            String subtipologia3 = request.getParameter("subtipologia");
            String nombre3 = request.getParameter("nombre");            
            if (f.registrarTipoProducto(token, tipologia3, subtipologia3, nombre3)) {
                session.setAttribute("resultad", "Se ha registrado el tipo de producto correctamente");
                System.out.println("entro aca");
            }
            else {
                System.out.println("no le entro");
            }
            break;
        // Eliminar
        case 8 :
            System.out.println("llego");
            String id3 = request.getParameter("id");
            if (f.eliminarTipoProducto(id3)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 9 :
            ArrayList<JSONObject> tiposProducto = f.listarTipoProducto();
            session.setAttribute("tiposProducto", tiposProducto);
            response.sendRedirect("../tiposProducto.jsp");
            break;
            
                 // TIPOS CATEGORIAS PRODUCTOS*********************************************************************************
            
         case 10 : 
            token = request.getParameter("token");
            String tipologia4 = request.getParameter("tipologia");
            String subtipologia4 = request.getParameter("subtipologia");
            String nombre4 = request.getParameter("nombre"); 
            String tipo4 = request.getParameter("tipo");
            String categoria4 = request.getParameter("categoria");  
            if (f.registrarCategoriaProducto(token, tipologia4, subtipologia4, tipo4, nombre4)) {
                session.setAttribute("resultad", "Se ha registrado el tipo de producto correctamente");
                System.out.println("entro aca");
            }
            else {
                System.out.println("no le entro");
            }
            break;
        // Eliminar
        case 11 :
            System.out.println("llego");
            String id4 = request.getParameter("id");
            if (f.eliminarCategoriaProducto(id4)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 12 :
            ArrayList<JSONObject> categoriaProductos= f.listarCategoriaProducto();
            session.setAttribute("categoriaProductos", categoriaProductos);
            response.sendRedirect("../categoriaProductos.jsp");
            break;
    }
    
    
    
    
    
%>