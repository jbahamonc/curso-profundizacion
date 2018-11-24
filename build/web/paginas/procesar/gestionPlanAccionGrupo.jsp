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
    String anio = "";
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
            String tipoSesion = session.getAttribute("tipoSesion").toString();
            JSONObject dataForm = f.cargarInfoForm(token, id_grupo, tipoSesion);
             if (dataForm != null ){            
            session.setAttribute("data", dataForm);
                response.sendRedirect("../registroPlanDeAccionGrupo.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
            
        // Registro inicial de plan de accion
        case 3:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");   
            String tipoSession = session.getAttribute("tipoSesion").toString();
            JSONObject res = f.registrarInicialPlanAccionGrupo(anio, semestre, id_grupo, tipoSession, token);
            if ( res != null ) {
                res.put("status", 200);
            } else {
                res = new JSONObject();
                res.put("status", 500);
            }
            out.print(res);
            break;
            
        // Vincular proyectos al plan de accion
        case 4:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String id_proyecto = request.getParameter("proyecto");
            boolean bool = f.vincularProyectoPlanGrupo(anio, semestre, id_grupo, id_proyecto, token);
            JSONObject json = new JSONObject();
            if ( bool ) {
                json.put("status", 200);
            } else {
                json.put("status", 500);
            }
            out.print(json);
            break;
            
        // Registrar eventos en el plan de accion
        case 5:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String evento = request.getParameter("nombreEvento");
            String caracterEvento = request.getParameter("caracterEvento");
            String responsables[] = request.getParameterValues("responsables");
            String fechaIni = request.getParameter("fechaIni");
            String fechFin = request.getParameter("fechFin");
            String intPromotoras[] = request.getParameterValues("intPromotoras");
            String entidades[] = request.getParameterValues("entidades");
            boolean respuesta = f.registrarEventoPlanAccionGrupo(anio, semestre, id_grupo, evento, caracterEvento, responsables, fechaIni, 
                    fechFin, intPromotoras, entidades, token);
            JSONObject json1 = new JSONObject();
            if ( respuesta ) {
                json1.put("status", 200);
            } else {
                json1.put("status", 500);
            }
            out.print(json1);
            break;
            
        // Registrar actividades en el plan de accion
        case 6:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String actividad = request.getParameter("actividad");
            String respAct[] = request.getParameterValues("respAct");
            String fechaInicio = request.getParameter("fechaInicio");
            String fechFinal = request.getParameter("fechFinal");
            String producto = request.getParameter("producto");
            boolean rsp = f.registrarActividadPlanAccionGrupo(anio, semestre, id_grupo, actividad, respAct, fechaInicio, fechFinal, 
                    producto, token);
            JSONObject json2 = new JSONObject();
            if ( rsp ) {
                json2.put("status", 200);
            } else {
                json2.put("status", 500);
            }
            out.print(json2);
            break;
            
        // Registrar avance actividades en el plan de accion
        case 7:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            String id_actividad = request.getParameter("actividad");
            String porcentaje = request.getParameter("porcActividad");
            boolean r = f.registroAvanceActividadPlan(anio, semestre, id_grupo, id_actividad, porcentaje, token);
            JSONObject json3 = new JSONObject();
            if ( r ) {
                json3.put("status", 200);
            } else {
                json3.put("status", 500);
            }
            out.print(json3);
            break;
            
        // Registrar avance eventos en el plan de accion
        case 8:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            String id_evento = request.getParameter("id_evento");
            String por = request.getParameter("porcEvento");
            boolean re = f.registroAvanceEventoPlan(anio, semestre, id_grupo, id_evento, por, token);
            JSONObject json4 = new JSONObject();
            if ( re ) {
                json4.put("status", 200);
            } else {
                json4.put("status", 500);
            }
            out.print(json4);
            break;
            
        // Registrar avance eventos en el plan de accion
        case 9:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            JSONObject infoPlan = f.consultarPlanAccionGrupo(anio, semestre, id_grupo, token);
            if ( infoPlan == null ) {
                //session.setAttribute("infoPlan", infoPlan);
                response.sendRedirect("../infoPlanAccionGrupo.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
    }

%>
