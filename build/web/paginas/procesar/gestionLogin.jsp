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
            String pass = request.getParameter("pass");
            JSONObject res = f.iniciarSesion(user, pass);
            if ( res.getString("exito").equals("1") ) {
                session.setAttribute("id_director", res.getJSONObject("usuario").getInt("id"));
                System.out.println(session.getAttribute("id_director").toString());
                session.setAttribute("usuario_sesion", res);
            }
            out.print(res);
    }

%>
