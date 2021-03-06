<%-- 
    Document   : planAccionGrupo
    Created on : 10-nov-2018, 18:17:24
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
                <h2 class="info-box-text"><b>Gestión de Planes de Acción</b></h2>
                <span class="info-box-number">A continuación podra gestionar los planes de acción del grupo de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Listado de Planes de Acción</h3>
                    </div>            
                    <div class="box-body">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Año</th>
                                    <th>Semestre</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%-- 
                                    JSONObject lista = (JSONObject)session.getAttribute("planesAccion");
                                    JSONArray planes = lista.getJSONArray("planes");
                                    for (int i = 0; i < planes.length(); i++) {
                                        JSONObject obj = planes.getJSONObject(i);                                        
                                %>
                                <tr>
                                    <td><%= (i + 1) %></td>
                                    <td><%= obj.getString("año") %></td>
                                    <td><%= obj.getInt("semestre") %></td>
                                    <td class="text-center">
                                        <a href="procesar/gestionPlanAccionGrupo.jsp?anio=<%= obj.getInt("año") %>&sem=<%= obj.getInt("semestre") %>&operacion=9&token=<%= obj.getString("token")%>" title="Información de Plan de Acción" class="btn btn-success btn-xs">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </a>
                                        <a href="#" data-anio="<%= obj.getString("anio")%>" data-semestre="<%= obj.getString("semestre")%>" data-toggle="modal" data-target="#modal" class="btn btn-primary btn-xs" title="Registrar Avance de las Actividades del Plan">
                                            <i class="fa fa-line-chart" aria-hidden="true"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#modal-evt" class="btn btn-primary btn-xs" title="Registrar Avances en los Eventos del Plan">
                                            <i class="fa fa-bar-chart" aria-hidden="true"></i>
                                        </a>
                                    </td>                                    
                                </tr>--%>
                                <tr>
                                    <td>1</td>
                                    <td>2018</td>
                                    <td>1</td>
                                    <td class="text-center">
                                        <a href="procesar/gestionPlanAccionGrupo.jsp?anio=2018&sem=1&operacion=9&token=asdasd34234" title="Información de Plan de Acción" class="btn btn-success btn-xs">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </a>
                                        <a href="" data-anio="2018" data-semestre="1" data-toggle="modal" data-target="#modal" class="btn btn-primary btn-xs" title="Actualizar Estado de las Actividades del Plan">
                                            <i class="fa fa-line-chart" aria-hidden="true"></i>
                                        </a>
                                        <a href="" data-anio="2018" data-semestre="1" data-toggle="modal" data-target="#modal-evt" class="btn btn-primary btn-xs" title="Actualizar Estado de los Eventos del Plan">
                                            <i class="fa fa-bar-chart" aria-hidden="true"></i>
                                        </a>
                                    </td>                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</div>
</section>
</div>
<a href="procesar/gestionPlanAccionGrupo.jsp?operacion=2&token=<%= session.getAttribute("token").toString() %>" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Plan de Acción">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>

<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form-avance-act-plan">
                <input type="hidden" value="7" name="operacion">
                <input type="hidden" name="año" id="anio">
                <input type="hidden" name="semestre" id="semestre">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Seleccione la Actividad (*)</label>
                        <select class="form-control" required name="actividad">
                            <option disabled selected>Seleccione</option>
                            <%-- 
                                JSONObject obj = (JSONObject)session.getAttribute("actividades");
                                JSONArray actividades = obj.getJSONArray("actividades");
                                for (int i = 0; i < actividades.length(); i++) {   
                                    JSONObject act = actividades.getJSONObject(i);
                            %>                            
                            <option value="<%= act.getInt("id") %>"><%= act.getString("nombre")%></option>
                            <% } --%>
                            <option value="0">Actividad 1</option>
                            <option value="1">Actividad 2</option>
                            <option value="2">Actividad 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Porcentaje de avance (%) (*)</label>
                        <input type="number" class="form-control" required name="porcActividad">
                    </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-avance-act-plan">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal -->
<div class="modal fade" id="modal-evt" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form id="form-avance-evt-plan">
                <input type="hidden" value="8" name="operacion">
                <input type="hidden" name="año" id="anio">
                <input type="hidden" name="semestre" id="semestre">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body"> 
                    <div class="form-group">
                        <label>Nombre del Evento (*)</label>
                        <select class="form-control" required name="id_evento">
                            <option disabled selected>Seleccione</option>
                            <%-- 
                                JSONArray eventos = obj.getJSONArray("eventos");
                                for (int i = 0; i < eventos.length(); i++) {   
                                    JSONObject evt = eventos.getJSONObject(i);
                            %>                            
                            <option value="<%= evt.getInt("id") %>"><%= evt.getString("nombre")%></option>
                            <% } --%>
                            <option value="0">Evento 1</option>
                            <option value="1">Evento 2</option>
                            <option value="2">Evento 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Porcentaje de avance (%) (*)</label>
                        <input type="number" class="form-control" required name="porcEvento">
                    </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary" id="btn-avance-evt-plan">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionPlanAccionGrupo.js"></script>

</body>
</html>
