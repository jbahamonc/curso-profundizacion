<%-- 
    Document   : registrarProyecto
    Created on : 10-nov-2018, 18:31:45
    Author     : fasap
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Registro de Proyectos
            <small>A continuación podra registrar los proyectos del grupo de investigación.</small>
        </h1>
    </section>
    <section class="content">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de Registro</h3>              	
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="row">
                    <form id="form-save-project">
                        <input type="hidden" value="3" name="operacion">
                        <div class="form-group col-xs-12">
                            <label>Título (*)</label>
                            <input type="text" class="form-control" required name="titulo">
                        </div>                        
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Linea de Investigación (*)</label>
                            <select class="form-control" required name="linea">
                                <option selected disabled>Seleccione</option>
                                <%
                                    JSONObject data = (JSONObject)session.getAttribute("dataForm");
                                    JSONArray lineas = data.getJSONArray("lineasGrupoSemillero");
                                    for (int i = 0; i < lineas.length(); i++) {
                                        JSONObject obj = lineas.getJSONObject(i);                                
                                %>
                                <option value="<%= obj.getInt("id") %>"><%= obj.getString("nombre") %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Tiempo de Ejecución (Meses) (*)</label>
                            <input type="number" class="form-control" required min="0" name="tiempo">
                        </div>	
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Fecha de Inicio (*)</label>
                            <input type="date" class="form-control" required name="fechaInicio">
                        </div>
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Fecha Final (*)</label>
                            <input type="date" class="form-control" required name="fechaFin">
                        </div>
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Costo Total (*)</label>
                            <input type="number" class="form-control" required min="0" name="costo">
                        </div>	
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Tipo de Proyecto (*)</label>
                            <select class="form-control" id="tipo-proyecto" required name="tipoProyecto">
                                <option selected disabled>Seleccione</option>
                                <%
                                    JSONArray tipoPro = data.getJSONArray("TipoProyecto");
                                    for (int i = 0; i < tipoPro.length(); i++) {
                                        JSONObject obj = tipoPro.getJSONObject(i);                                
                                %>
                                <option value="<%= obj.getInt("id") %>"><%= obj.getString("nombre") %></option>
                                <% } %>
                            </select>
                        </div>	
                        <div class="clearfix"></div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Resumen (*)</label>
                            <textarea class="form-control" rows="3" required name="resumen"></textarea>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Objetivo General (*)</label>
                            <textarea class="form-control" rows="3" required name="objGeneral"></textarea>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Resultados Esperados (*)</label>
                            <textarea class="form-control" rows="3" required name="resEsparados"></textarea>
                        </div>
                        <div class="form-group col-xs-12">
                            <label>Objetivos Especificos (*) </label>
                            <button type="button" data-toggle="modal" data-target="#modal" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                            <select required name="objEspecificos" class="js-example-basic-multiple2" data-placeholder="Ingrese los Objetivos Específicos" multiple style="width: 100%;">
                                </select>	                  	
                        </div>
                        <div class="form-group col-xs-12 col-md-4 hidden" id="num-contrato">
                            <label>Numero de Contrato (*)</label>
                            <input class="form-control" type="text" required name="numContrato">
                        </div>
                        <div class="clearfix"></div>
                        <br><br>
                        <div class="form-group col-xs-12 text-right">
                            <button type="button" class="btn bg-red btn-flat btn-lg" id="btn-save-project">REGISTRAR PROYECTO</button>
                        </div>                				                                      
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->

<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Objetivo Especifico (*)</label>
                        <textarea id="obj_esp" class="form-control" rows="3"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" id="btn-add-objective" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionarProyectos.js"></script>

</body>
</html>
