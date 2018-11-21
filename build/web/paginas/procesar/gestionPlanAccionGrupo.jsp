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
    String token = "";
    switch (operacion) {
        
        case 1 : 
            token = request.getParameter("token");
            //String id_grupo = session.getAttribute("id_grupo").toString();
            //JSONObject planesAccion = f.listarPlanesAccion(token, id_grupo);
            //session.setAttribute("planesAccion", planesAccion);
            session.setAttribute("token", token);
            response.sendRedirect("../planAccionGrupo.jsp");
    }

%>
