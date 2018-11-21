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
                <div class="row">
                    <form>
                        <div class="form-group col-xs-12">
                            <label>Título (*)</label>
                            <input type="text" class="form-control">
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
                            <select class="form-control" id="tipo-proyecto">
                                <option selected disabled>Seleccione</option>
                                <option>Finu</option>
                                <option>Institucional</option>
                                <option>Externo</option>
                                <option>Extension</option>
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
                        <div class="form-group col-xs-12 col-md-4 hidden" id="num-contrato">
                            <label>Numero de Contrato (*)</label>
                            <input class="form-control" type="text">
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
<script src="../js/ajax/gestionarProyectos.js"></script>

</body>
</html>
