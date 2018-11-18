<%-- 
    Document   : gestionGrupos
    Created on : 18/11/2018, 09:25:01 AM
    Author     : jeferson
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
  
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    String token = "";
    switch (operacion) {
        // Registrar
        case 1 : 
            String nombre = request.getParameter("nombreGrupo");
            String siglas = request.getParameter("siglas");            
            String tipoUnidad = request.getParameter("tipoUnidadAcademica");            
            String nombreUnidad = request.getParameter("nombreUnidadAcademica");            
            String ubicacion = request.getParameter("ubicacion");            
            String fecha = request.getParameter("fechaCreacion");            
            String codigoGruplav = request.getParameter("codigoGruplav");            
            String clasificado = request.getParameter("clasificadoColciencias");            
            String categoria = request.getParameter("categoriaGrupo");            
            String email = request.getParameter("email");            
            String nombreDpto = request.getParameter("nombreDepartamento");            
            String director = request.getParameter("directorGrupo");  
            token = request.getParameter("token");  
            //int id = f.registrarGrupo(nombre, siglas, tipoUnidad, nombreUnidad, ubicacion, fecha, codigoGruplav, clasificado, 
            //        categoria, email, nombreDpto, director);
            int id = 1;
            JSONObject json = new JSONObject();
            if (id > 0) {
                json.put("status", "200");
                json.put("id_grupo", "1");
            }
            else {
                json.put("status", "500");
            }
            out.print(json);
            break;
        
        // Consultar
        case 2 :
            String id_grupo = request.getParameter("id_grupo");
            token = request.getParameter("token");
            
            
            
        default :
            System.out.println("no hay nada para hacer");
            break;
    }

%>