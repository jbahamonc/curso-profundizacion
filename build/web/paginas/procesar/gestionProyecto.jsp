<%-- 
    Document   : gestionProyecto
    Created on : 20/11/2018, 04:31:54 PM
    Author     : jeferson
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<% 
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    String token = request.getParameter("token");
    String tipoSesion = "";
    String id = session.getAttribute("idGrupoSemillero").toString();
    switch (operacion) {
        // Mostrar form registro
        case 1:
            tipoSesion = session.getAttribute("tipoSesion").toString();            
            JSONObject dataForm = f.cargarInfoFormRegistroProyectos(token, tipoSesion, id);
            if (dataForm != null) {
                session.setAttribute("dataForm", dataForm);
                response.sendRedirect("../registrarProyecto.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }            
            break;
            
        // Listar proyectos
        case 2: 
            tipoSesion = session.getAttribute("tipoSesion").toString();
            JSONObject proyectos = f.listarProyectos(id, tipoSesion, token);
            if ( proyectos != null ) { 
                session.setAttribute("proyectos", proyectos);
                session.setAttribute("token", token);
                response.sendRedirect("../proyectos.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
        
        // Registrar proyectos
        case 3:
            String titulo = request.getParameter("titulo");
            String linea = request.getParameter("linea");
            String tiempo = request.getParameter("tiempo");
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFin = request.getParameter("fechaFin");
            String costo = request.getParameter("costo");
            String tipoProyecto = request.getParameter("tipoProyecto");
            String resumen = request.getParameter("resumen");
            String objGeneral = request.getParameter("objGeneral");
            String resEsperados = request.getParameter("resEsparados");
            String objEspecificos[] = request.getParameterValues("objEspecificos");
            String numContrato = request.getParameter("numContrato");
            tipoSesion = session.getAttribute("tipoSesion").toString();
            int res = f.registrarProyecto(id, titulo, linea, tiempo, fechaInicio, fechaFin, costo, tipoProyecto, resumen, 
                                objGeneral, resEsperados, objEspecificos, numContrato, token, tipoSesion);
            JSONObject json = new JSONObject();
            if ( res > 0 ) {
                json.put("status", 200);
                json.put("id", res);
            } else {
                json.put("status", 500);                
            }        
            out.print(json);
            break;
        
        // Consultar proyecto
        case 4:
            String idProject = request.getParameter("id");
            JSONObject data = f.consultarProyecto(idProject, token);
            if (data == null) { // null para probar
                session.setAttribute("infoProject", data);
                response.sendRedirect("../infoProyecto.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
            
        // Cerrar un proyecto
        case 5:
            String id_project = request.getParameter("id_proyecto");
            boolean respon = f.cerrarProyecto(id_project, token);
            JSONObject obj = new JSONObject();
            if ( respon ) {
                obj.put("status", 200);
            } else {
                obj.put("status", 500);
            }
            out.print(obj);
            break;
            
        // para visitantes
        // Listar proyectos
        case 6: 
            String idGrupo = request.getParameter("id");
            JSONObject pro = f.listarProyectos(idGrupo, "1", token);
            if ( pro != null ) { 
                session.setAttribute("proyectos", pro);
                response.sendRedirect("../visitante/listado-proyectos.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
            
    }

%>
