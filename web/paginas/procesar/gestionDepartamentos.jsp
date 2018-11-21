<%-- 
    Document   : gestionDepartamentos
    Created on : 18/11/2018, 10:25:12 AM
    Author     : jeferson
--%>

<%@page import="Fachada.Fachada"%>
<%
  
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    switch (operacion) {
        // Listas
        case 1:
        case 2 :             
        default :
            System.out.println("no hay nada para hacer");
            break;
    }

%>
