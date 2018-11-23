<%-- 
    Document   : gestionSemillero
    Created on : 18-nov-2018, 16:04:10
    Author     : fasap
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Fachada.Fachada"%>
<%
    
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada fachada = new Fachada();
    String token = "";
    switch (operacion) {
        case 1: //REGISTRAR
            String codigo = request.getParameter("codigo");
            String nombreSemillero = request.getParameter("nombre");
            String siglas = request.getParameter("sigla");
            String ubicacion = request.getParameter("ubicacion");
            String fechaCreacion = request.getParameter("fechaCreacion");
            String idDirector = request.getParameter("director");
            String idLineaInvestigacion = request.getParameter("lineaInvestigacion");
            String email = request.getParameter("email");
            String idGrupo = (String)session.getAttribute("idGrupoSemillero");
            int valorId = fachada.registrarSemillero(codigo, nombreSemillero, siglas, ubicacion, fechaCreacion, idDirector, idLineaInvestigacion, email, idGrupo);
            JSONObject valor = new JSONObject();
            if (valorId > 0) {
                valor.put("id", valorId);
                valor.put("status", "200");
            } else {
                valor.put("status", "500");
            }
            out.print(valor);
            break;
        case 2: //LISTAR
            token = request.getParameter("token");
            JSONObject semilleros = fachada.listarSemilleros();
            session.setAttribute("semilleros", semilleros);
            session.setAttribute("token", token);
            response.sendRedirect("../semillerosInvestigacion.jsp");
            break;

        case 3: //ELIMINAR
            token = request.getParameter("token");
            String id = request.getParameter("id");

            boolean resultado = true;
            JSONObject res = new JSONObject();
            if (resultado) {
                res.put("status", 200);
            } else {
                res.put("status", 500);
            }
            out.print(res);
            break;

        case 4: //LISTAR DIRECTORES Y LINEAS DE INVESTIGACION
            token = request.getParameter("token");
            int idGrupoConsulta = (int) session.getAttribute("idGrupoSemillero");
            JSONObject listaDirectoresYLIneasInvestigacion = fachada.listarDirectoresYLineasInvestigacion(idGrupoConsulta);
            session.setAttribute("listaDirectoresYLIneasInvestigacion", listaDirectoresYLIneasInvestigacion);
            response.sendRedirect("../registroSemillero.jsp");
            break;

        case 5: //CONSULTAR UN SEMILLERO
            String idSemillero = request.getParameter("id");
            token = request.getParameter("token");
            JSONObject jsonSemillero = fachada.consultarSemillero(idSemillero, token);
            if (jsonSemillero != null) {
                jsonSemillero.put("token", token);
                session.setAttribute("semillero", jsonSemillero);
                response.sendRedirect("../infoSemillero.jsp");
            } else {
                System.out.println("ocurrio un error");
            }
            break;

        default:
            System.out.println("no hay nada para hacer");
            break;
    }

%>
