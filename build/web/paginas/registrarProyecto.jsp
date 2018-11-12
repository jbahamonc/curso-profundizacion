<%-- 
    Document   : registrarProyecto
    Created on : 10-nov-2018, 18:31:45
    Author     : fasap
--%>

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
                <div class="alert alert-warning alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <h4><i class="icon fa fa-warning"></i> Importante!</h4>
                    <p class="margin">Tenga en cuenta las siguientes indicaciones para agregar los objetivos especifícos.</p>
                    <br>
                    <ul>
                        <li>De clic en el botón AGREGAR para desplegar el modal.  </li>
                        <li>Dentro del modal debe ingresar los objetivos uno por uno.</li>
                        <li>Dar clic en GUARDAR para agregarlo a la lista.</li>
                        <li>Una vez finalice clic en cerrar para cerrar el modal.</li>
                    </ul>
                </div>
                <div class="row">
                    <form>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Título (*)</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Responsables del Proyecto (*)</label>
                            <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables[]" multiple style="width: 100%;">
                                <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                <option value="WY">Oscar Alberto Gallardo Perez</option>
                                <option value="WY">Jessica Lorena Pabón</option>
                                <option value="WY">Gladys Adriana Espinel</option>
                                <option value="WY">Milton Vera Contreras</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Linea de Investigación (*)</label>
                            <select class="form-control">
                                <option>option 1</option>
                                <option>option 2</option>
                                <option>option 3</option>
                                <option>option 4</option>
                                <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Tiempo de Ejecución (Meses) (*)</label>
                            <input type="number" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Fecha de Inicio (*)</label>
                            <input type="month" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Costo Total (*)</label>
                            <input type="number" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Tipo de Proyecto (*)</label>
                            <select class="form-control">
                                <option>option 1</option>
                                <option>option 2</option>
                                <option>option 3</option>
                                <option>option 4</option>
                                <option>option 5</option>
                            </select>
                        </div>	
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Resumen (No debe exceder 250 palabras) (*)</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Objetivo General (*)</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Resultados Esperados (*)</label>
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <div class="form-group col-xs-12">
                            <label>Objetivos Especificos (*) </label>
                            <button type="button" data-toggle="modal" data-target="#modal" style="margin: 0px 0px 5px 10px" class="btn btn-danger btn-xs">AGREGAR</button>
                            <select class="js-example-basic-multiple2" data-placeholder="Ingrese los Objetivos Específicos" name="obj_especificos[]" multiple style="width: 100%;">
                                <select>	                  	
                        </div>
                        <div class="clearfix"></div>
                        <br><br>
                        <div class="form-group col-xs-12 text-right">
                            <a href="infoProyecto.jsp" class="btn bg-red btn-flat btn-lg">REGISTRAR PROYECTO</a>
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
