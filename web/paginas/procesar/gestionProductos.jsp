<%-- 
    Document   : gestionProductos
    Created on : 25/11/2018, 07:54:22 PM
    Author     : jeferson
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    String id_proyecto = "";
    JSONObject data = null;
    switch (operacion) {
        
        // Listar productos
        case 1:
            id_proyecto = session.getAttribute("proyecto_sesion").toString();
            data = f.listarProductosProyecto(id_proyecto);
            if ( data == null ) {
                session.setAttribute("productos", data);
                response.sendRedirect("../productosProyecto.jsp");
            }else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
        
        // Mostrar formulario de registro
        case 2:
            data = f.cargarDatosRegistroProductos();
            if (data == null) {
                session.setAttribute("datos", data);
                response.sendRedirect("../registroProductos.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            
            break;
            
        // Mostrar formulario de registro
        case 3:
            
            data = f.cargarDatosRegistroProductos();
            if (data != null) {
                session.setAttribute("datos", data);
                response.sendRedirect("../registroProductos.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            
            break;
    }

%>
