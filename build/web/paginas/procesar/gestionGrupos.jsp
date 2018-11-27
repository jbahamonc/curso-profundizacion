<%-- 
    Document   : gestionGrupos
    Created on : 18/11/2018, 09:25:01 AM
    Author     : jeferson
--%>

<%@page import="org.json.JSONArray"%>
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
            String director = session.getAttribute("id_director").toString();  
            token = request.getParameter("token");  
            int id = f.registrarGrupo(nombre, siglas, tipoUnidad, nombreUnidad, ubicacion, fecha, codigoGruplav, clasificado, 
                    categoria, email, nombreDpto, director);
            JSONObject json = new JSONObject();
            if (id > 0) {
                json.put("status", "200");
                json.put("id_grupo", "1");
                session.setAttribute("tipoSesion", "1");
                session.setAttribute("idGrupoSemillero", id);
            }
            else {
                json.put("status", "500");
            }
            out.print(json);
            break;
        
        // Consultar
        case 2 :
            String id_grupo = request.getParameter("id");
            token = request.getParameter("token");            
            JSONObject jsonGrupo = f.consultarGrupo(id_grupo, token);
            if ( jsonGrupo != null ) { 
                jsonGrupo.put("token", token);
                session.setAttribute("grupo", jsonGrupo);
                session.setAttribute("tipoSesion", "1");
                session.setAttribute("idGrupoSemillero", id_grupo);
                response.sendRedirect("../infoGrupo.jsp");
            } else {
                System.out.println("ocurrio un error");
                response.sendError(500, "Ocurrio un error en el servidor");
            }            
            break;   
            
        // Listar
        case 3 :
            token = request.getParameter("token");
            JSONObject grupos = f.listarGrupos();
            session.setAttribute("grupos", grupos);
            session.setAttribute("token", token);            
            response.sendRedirect("../gruposInvestigacion.jsp");
            break;
            
        // Cargar datos para registro de grupos
        case 4 :
            token = request.getParameter("token");
            JSONObject objInfo = f.cargarInfoRegistroGrupos(token);
            session.setAttribute("infoGrupo", objInfo);
            response.sendRedirect("../registroGrupo.jsp");
            break;
        
        // Eliminar
        case 5 :
            token = request.getParameter("token");
            String idDel = request.getParameter("id");
            //boolean bool = f.eliminarGrupo(idDel, token);
            boolean bool1 = true;
            JSONObject res = new JSONObject();
            if ( bool1 ) {
                res.put("status", 200);
            } else {
                res.put("status", 500);
            }
            out.print(res);
            break;
            
        // Para visitantes
        // listar grupos
        case 6 :
            JSONObject gruposV = f.listarGrupos();
            session.setAttribute("grupos", gruposV);  
            response.sendRedirect("../visitante/grupos-investigacion.jsp");
            break;
            
        // listar categoria grupos
        case 7 :
            JSONObject categorias = f.listarGruposCategorias();
            session.setAttribute("categorias", categorias);  
            response.sendRedirect("../categoriasGrupos.jsp");
            break;
            
        default :
            System.out.println("no hay nada para hacer");
            break;
    }

%>