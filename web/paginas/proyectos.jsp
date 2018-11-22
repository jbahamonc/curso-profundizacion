<%-- 
    Document   : proyectos
    Created on : 10-nov-2018, 18:12:49
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Gestión de Proyectos</b></h2>
                <span class="info-box-number">A continuación podra gestionar los proyectos del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listado</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th width="500">Titulo</th>
                            <th>Responsables</th>
                            <th>Linea de Investigación</th>
                            <th>Fecha de Inicio</th>
                            <th>Tiempo de Ejecución (Meses)</th>
                            <th>Costo Total</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%-- 
                            JSONObject proyectos = (JSONObject)session.getAttribute("proyectos");
                            JSONArray pro = proyectos.getJSONArray("proyectos");
                            for(int i=0; i < pro.length(); i++) {
                                JSONObject obj = pro.getJSONObject(i);                            
                     
                        <tr>
                            <%--<td><%= i+1 %></td>
                            <td><%= obj.getString("nombre") %></td>
                            <td><%= obj.getString("directores") %></td>
                            <td><%= obj.getString("linea") %></td>
                            <td><%= obj.getString("fecha") %></td>
                            <td><%= obj.getString("tiempo") %></td>
                            <td><%= obj.getString("costo") %></td>
                            <td class="text-center">
                                <a href="procesar/gestionProyecto.jsp?id=<%= obj.getInt("id") %>&operacion=4&token=<%= obj.getToken("token") %>" id="link-info-proyecto" title="Información del Proyecto" type="button" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                                <button type="button" title="Finalizar Proyecto" class="btn btn-warning btn-xs btn-finish-project">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                        <% } --%>
                        <tr>
                            <td>1</td>
                            <td>nombre</td>
                            <td>nombre directores</td>
                            <td>linea de investigacion</td>
                            <td>23/11/2018</td>
                            <td>3</td>
                            <td>$3.000.000</td>
                            <td class="text-center">
                                <a href="procesar/gestionProyecto.jsp?id=1&operacion=4&token=saasd3qwe" title="Información del Proyecto" type="button" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                                <button type="button" title="Finalizar Proyecto" data-project="1" class="btn btn-warning btn-xs btn-finish-project">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                        <%-- } --%>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="" class="btn btn-danger pull-right btn-fixed" title="Registrar Nuevo Proyecto" id="link-reg-proyecto">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<script>
    document.getElementById("link-reg-proyecto").href = "procesar/gestionProyecto.jsp?operacion=1&token="+localStorage.getItem("token")
</script>
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionarProyectos.js"></script>

</body>
</html>