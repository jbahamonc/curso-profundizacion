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
    String token = "";
    switch (operacion) {
        
        case 2: 
            token = request.getParameter("token");
            //JSONObject proyectos = f.listarProyectos(token);
            //session.setAttribute("proyectos", proyectos);
            response.sendRedirect("../proyectos.jsp");
        
        case 6:
            token = request.getParameter("token");
            response.sendRedirect("../registrarProyecto.jsp");
    }

%>
