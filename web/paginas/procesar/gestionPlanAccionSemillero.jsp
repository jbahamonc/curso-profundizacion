<%-- 
    Document   : gestionPlanAccionSemillero
    Created on : 22-nov-2018, 22:06:00
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    String token = request.getParameter("token");
    Fachada fachada = new Fachada();
    String idSemillero = (String) session.getAttribute("idGrupoSemillero");
    String tipoSesion = (String) session.getAttribute("tipoSesion");
    String anio = "";
    String semestre = "";
    switch (operacion) {

        case 1://LISTAR PLAN ACCION SEMILLERO
            JSONArray listaPlanesAccionSemillero = fachada.listarPlanesAccionSemillero(idSemillero, tipoSesion, token);
            session.setAttribute("listaPlanesAccionSemillero", listaPlanesAccionSemillero);
            session.setAttribute("token", token);
            response.sendRedirect("../planAccionSemillero.jsp");
            break;

        case 2://CARGAR LINEAS DE INVESTIGACION
            JSONObject cargarInfo = fachada.cargarInfo(idSemillero, tipoSesion, token);
            if (cargarInfo != null) {
                session.setAttribute("info", cargarInfo);
                response.sendRedirect("../registroPlanDeAccionSemillero.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;

        case 3://REGISTRO PLAN ACCION
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");            
            JSONObject resultado = fachada.registrarPlanAccionSemillero(anio, semestre, idSemillero, tipoSesion, token);
            if ( resultado != null ) {
                resultado.put("status", 200);
            } else {
                resultado = new JSONObject();
                resultado.put("status", 500);
            }
            out.print(resultado);
            break;

        case 4://AÑADIR PROYECTOS AL PLAN DE ACCION DEL SEMILLERO
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String idProyecto = request.getParameter("proyecto");
            boolean resultadoProyeco = fachada.vincularProyectoPlanSemillero(anio, semestre, idSemillero, idProyecto, tipoSesion, token);
            JSONObject json = new JSONObject();
            if ( resultadoProyeco ) {
                json.put("status", 200);
            } else {
                json.put("status", 500);
            }
            out.print(json);
            break;

        case 5://REGISTRAR CAPACITACIONES AL PLAN DE ACCION
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String nombreCapacitacion = request.getParameter("nombreCapcitacion");
            String objetivoCapacitacion = request.getParameter("objetivoCapacitacion");
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFinal = request.getParameter("fechaFinal");
            String numAsistentes = request.getParameter("numAsistentes");
            String responsables[] = request.getParameterValues("capacitores");
            boolean respuesta = fachada.registrarCapacitacionPlanAccionSemillero(anio, semestre, idSemillero, nombreCapacitacion, objetivoCapacitacion, fechaInicio, fechaFinal, 
                    numAsistentes, responsables, token);
            JSONObject json1 = new JSONObject();
            if ( respuesta ) {
                json1.put("status", 200);
            } else {
                json1.put("status", 500);
            }
            out.print(json1);
            break;
            
        case 6://REGISTRAR ACTIVIDADES EN EL PLAN DE ACCION
            anio = request.getParameter("año");
            semestre = request.getParameter("semestre");  
            String actividad = request.getParameter("actividad");
            String responsablesAct[] = request.getParameterValues("responsables");
            String fechaInicioAct = request.getParameter("fechaInicio");
            String fechaFinalAct = request.getParameter("fechaFinal");
            String producto = request.getParameter("producto");
            boolean respuestaActividad = fachada.registrarActividadPlanAccionSemillero(anio, semestre, idSemillero, actividad, responsablesAct, fechaInicioAct, fechaFinalAct, 
                    producto, tipoSesion, token);
            JSONObject json2 = new JSONObject();
            if ( respuestaActividad ) {
                json2.put("status", 200);
            } else {
                json2.put("status", 500);
            }
            out.print(json2);
            break;
            
            // Vincular proyectos nuevo y viejos al plan de accion
        case 7:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            String id_pro = request.getParameter("id");
            boolean vinculado = fachada.vincularProyectosNuevosViejosSemillero(anio, semestre, idSemillero, id_pro, token);
            JSONObject jo = new JSONObject();
            if ( vinculado ) {
                jo.put("status", 200);
            } else {
                jo.put("status", 500);
            }
            out.print(jo);
            break;
            
            // Vincular actividades antiguas al nuevo plan de accion
        case 8:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            String id_act = request.getParameter("id");
            //System.out.println("anio="+anio+"semestre="+semestre+"grupo="+id_grupo+"proyecto="+id_pro);
            boolean resp = fachada.vincularActividadesAntiguasPlanSemillero(anio, semestre, idSemillero, id_act, token);
            JSONObject j1 = new JSONObject();
            if ( resp ) {
                j1.put("status", 200);
            } else {
                j1.put("status", 500);
            }
            out.print(j1);
            break;
            
        // Vincular capacitaciones antiguos al nuevo plan de accion
        case 9:
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre"); 
            String id_cap = request.getParameter("id");
            //System.out.println("anio="+anio+"semestre="+semestre+"grupo="+id_grupo+"proyecto="+id_pro);
            boolean msg = fachada.vincularCapacitacionesAntiguosPlanSemillero(anio, semestre, idSemillero, id_cap, token);
            JSONObject j2 = new JSONObject();
            if ( msg ) {
                j2.put("status", 200);
            } else {
                j2.put("status", 500);
            }
            out.print(j2);
            break;

    }


%>
