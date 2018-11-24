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
    switch (operacion) {
        // Inicio sesion
        case 1:
            String user = request.getParameter("user");
            String pass = request.getParameter("password");
            JSONObject res = f.iniciarSesion(user, pass);
            if ( res == null ) {
                res = new JSONObject();
                res.put("status", 200);
            }
            else {
                res.put("status", 200);
            }
            out.print(res);
    }

%>
