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
            String año = request.getParameter("año");
            String semestre = request.getParameter("semestre");
            JSONObject res = f.registrarInicialPlanAccionGrupo(año, semestre, id_grupo, token);
            if ( res != null ) {
                res.put("status", 200);
            } else {
                res.put("status", 500);
            }
            out.print(res);
            break;
    }

%>
