<%-- 
    Document   : gestionPlanAccionSemillero
    Created on : 22-nov-2018, 22:06:00
    Author     : fasap
--%>

<%@page import="Fachada.Fachada"%>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    String token = "";
    Fachada fachada = new Fachada();
    
    switch(operacion){
    
        case 1://REGISTRO PLAN ACCION
            break;
            
        case 2://REGISTRO INFORMACION POR LINEAS INVESTIGACION
            break;
            
        case 3://REGISTRO CAPACITACIONES
            break;
            
        case 4://REGISTRO DE OTRAS ACTIVIDADES DE INVESTIGACION
            break;
            
        case 5://LISTAR PLAN ACCION
            break;
            
    
    
    
    }



%>
