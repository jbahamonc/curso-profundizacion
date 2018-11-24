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
    String token = "eyJ0eXAiOiJV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhdXRoMCJ9.3JMOfjxsGnnoHO0aM34eFJskcZKidt-X0_LO1Bh_7MY";
    System.out.println(operacion);
    Fachada f = new Fachada();
    switch (operacion) {
        //CATEGORIA DEDICACION       
        // Registrar
        case 1 : 
            
            String nombre = request.getParameter("nombre"); 
            token = request.getParameter("token");
            if (f.registrarCategoriaDedicacion(token,nombre)) {
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
            token = request.getParameter("token");
            String id = request.getParameter("id");
            token = request.getParameter("token");
            if (f.registrarCategoriaDedicacion(token,id)) {
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
            
            //CATEGORIA DOCENTE
            
            // REGGISTRAR 
         case 4 : 
            
            String nombre2 = request.getParameter("nombre");            
            if (f.registrarCategoriaDocente(token,nombre2)) {
                session.setAttribute("resultad", "Se ha registrado la Categoria Docente");
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
            if (f.eliminarCategoriaDocente(id2)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 6 :
            ArrayList<JSONObject> cdocente = f.listarCategoriaDocente();
            session.setAttribute("categoriadocente", cdocente);
            response.sendRedirect("../categoriaDocente.jsp");
            break;
            
            
       //CATEGORIA INVESTIGADOR
            
            // REGGISTRAR 
         case 7 : 
            token = request.getParameter("token");
            String nombre3 = request.getParameter("nombre");            
            if (f.registrarCategoriaInvestigador(token,nombre3)) {
                session.setAttribute("resultad", "Se ha registrado la Categoria Investigador");
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
            if (f.eliminarCategoriaInvestigador(id3)) {
                response.setStatus(200);
            } else {
                response.setStatus(400);
            }
            break;
        // Listar
        case 9 :
            ArrayList<JSONObject> cinvestigador = f.listarCategoriaInvestigador();
            session.setAttribute("categoriainvestigador", cinvestigador);
            response.sendRedirect("../categoriaInvestigador.jsp");
            break;
    }
    
    
    
    
    
%>

