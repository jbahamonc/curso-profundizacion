<%-- 
    Document   : gestionPlanAccionSemillero
    Created on : 22-nov-2018, 22:06:00
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    String token = request.getParameter("token");
    Fachada fachada = new Fachada();
    String idSemillero = (String) session.getAttribute("idSemillero");
    String anio = "";
    String semestre = "";
    switch (operacion) {

        case 1://LISTAR PLAN ACCION SEMILLERO
            JSONObject listaPlanesAccionSemillero = fachada.listarPlanesAccionSemillero(idSemillero, token);
            session.setAttribute("listaPlanesAccionSemillero", listaPlanesAccionSemillero);
            session.setAttribute("token", token);
            response.sendRedirect("../planAccionSemillero.jsp");
            break;

        case 2://CARGAR LINEAS DE INVESTIGACION
            JSONObject cargarInfo = fachada.cargarInfo(idSemillero, token);
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
            JSONObject resultado = fachada.registrarPlanAccionSemillero(anio, semestre, idSemillero, token);
            if ( resultado != null ) {
                resultado.put("status", 200);
            } else {
                resultado = new JSONObject();
                resultado.put("status", 200);
            }
            out.print(resultado);
            break;

        case 4://AÑADIR PROYECTOS AL PLAN DE ACCION DEL SEMILLERO
            anio = request.getParameter("anio");
            semestre = request.getParameter("semestre");  
            String idProyecto = request.getParameter("proyecto");
            boolean resultadoProyeco = fachada.vincularProyectoPlanSemillero(anio, semestre, idSemillero, idProyecto, token);
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
            String lineaInvestigacion = request.getParameter("lineaInv");
            String nombreCapacitacion = request.getParameter("nombreCapcitacion");
            String objetivoCapacitacion = request.getParameter("objetivoCapacitacion");
            String fechaRealizacion = request.getParameter("fechaRealizacion");
            String numAsistentes = request.getParameter("numAsistentes");
            String responsables[] = request.getParameterValues("capacitores");
            String nombreEvidencia = request.getParameter("nombreEvidencia");
            String file[] = request.getParameterValues("file");
            boolean respuesta = fachada.registrarCapacitacionPlanAccionSemillero(anio, semestre, idSemillero, lineaInvestigacion, nombreCapacitacion, objetivoCapacitacion, fechaRealizacion, 
                    numAsistentes, responsables, nombreEvidencia, file, token);
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
            String fechaRealizacionAct = request.getParameter("fechaRealizacion");
            String producto = request.getParameter("producto");
            boolean respuestaActividad = fachada.registrarActividadPlanAccionSemillero(anio, semestre, idSemillero, actividad, responsablesAct, fechaRealizacionAct, 
                    producto, token);
            JSONObject json2 = new JSONObject();
            if ( respuestaActividad ) {
                json2.put("status", 200);
            } else {
                json2.put("status", 200);
            }
            out.print(json2);
            break;

    }


%>
