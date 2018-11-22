<%-- 
    Document   : gestionPlanAccionGrupo
    Created on : 20/11/2018, 09:55:01 PM
    Author     : jeferson
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
    
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    String token = token = request.getParameter("token");
    String id_grupo = session.getAttribute("idGrupoSemillero").toString();
    String año = "";
    String semestre = "";
    switch (operacion) {
        
        // Listar planes de accion del grupo
        case 1 :             
            //JSONObject planesAccion = f.listarPlanesAccion(token, id_grupo);
            //session.setAttribute("planesAccion", planesAccion);
            session.setAttribute("token", token);
            response.sendRedirect("../planAccionGrupo.jsp");
            break;
            
        // Mostrar formulario de registro
        case 2: 
            //JSONObject dataForm = f.cargarInfoForm(token, idGrupo);
            // if (dataForm != null ){            
            //session.setAttribute("data", dataForm);
                response.sendRedirect("../registroPlanDeAccionGrupo.jsp");
            //} else {
            //    response.sendError(500, "Ocurrio un error en el servidor");
            //}
            break;
            
        // Registro inicial de plan de accion
        case 3:
            año = request.getParameter("año");
            semestre = request.getParameter("semestre");            
            JSONObject res = f.registrarInicialPlanAccionGrupo(año, semestre, id_grupo, token);
            if ( res != null ) {
                res.put("status", 200);
            } else {
                res = new JSONObject();
                res.put("status", 200);
            }
            out.print(res);
            break;
            
        // Vincular proyectos al plan de accion
        case 4:
            año = request.getParameter("año");
            semestre = request.getParameter("semestre");  
            String id_proyecto = request.getParameter("proyecto");
            boolean bool = f.vincularProyectoPlanGrupo(año, semestre, id_grupo, id_proyecto, token);
            JSONObject json = new JSONObject();
            if ( bool ) {
                json.put("status", 200);
            } else {
                json.put("status", 200);
            }
            out.print(json);
            break;
    }

%>
