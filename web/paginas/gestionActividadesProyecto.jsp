<%-- 
    Document   : actividades
    Created on : 10-nov-2018, 16:55:07
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- CONTENT WRAPPER -->
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <div class="info-box p-rel">
            <span class="info-box-icon"><i class="fa fa-book"></i></span>
            <div class="info-box-content">
                <h2 class="info-box-text"><b>Gestión de Actividades del Proyecto</b></h2>
                <span class="info-box-number">Gestione las actividades de cada objetivo del proyecto de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-6">
                <div class="box">
                    <div class="box-header with-border">
                        <h3 class="box-title">Listado de Objetivos del Proyecto</h3>
                    </div>
                    <div class="box-body">
                       <div class="box-group" id="accordion">
                        <div class="text-center hidden" id="info-empty-activitys">
                            <img src="../img/sad.png" alt="">
                            <h4><b>No hay información!</b></h4>
                            <p>El proyecto no cuenta con ningun objetivo registrado.</p>
                        </div>
                        <div class="">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">
                                        Revisar las etapas, conceptos y herramientas para la organización de contenidos (análisis, descripción, indización, y clasificación) y el uso de estos que permita construir un producto como expresión de un sistema de información, buscando facilitar la organización y acceso a los contenidos y servicios disponibles en los mismos.
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                                <div class="box-body">
                                    <strong><i class="fa fa-users"></i> Responsables</strong>
                                    <p class="text-muted">
                                        Judith del Pilar Rodríguez T <br>Oscar A. Gallardo Pérez <br> Jessica Lorena Pabón
                                    </p>
                                    <hr>
                                    <strong><i class="fa fa-book"></i> Producto</strong>
                                    <p class="text-muted">
                                        Evento Cientifico
                                    </p>
                                    <hr>
                                    <strong><i class="fa fa-book"></i> Actividades</strong>
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a>
                                                <span style="display: inline-block;margin-bottom: 10px">
                                                    Seleccionar la productividad de los Grupos de Investigación UFPS ventana 2012-2017.                                                    
                                                </span>
                                                <div style="display: inline-block">
                                                    <span class="label label-success">Fecha de Inicio: Julio 2018</span>
                                                    <span class="label label-success">Fecha de Terminacion: Noviembre 2018</span>
                                                </div>
                                                <div class="pull-right">
                                                    <button data-toggle="modal" data-target=".bs-example-modal-sm" title="Registro de Avance de la Actividad" class="btn btn-xs btn-primary"><i class="fa fa-percent"></i></button>
                                                    <button title="Eliminar la Actividad" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></button>
                                                </div>
                                                <span class="clearfix"></span>
                                            </a>                                            
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-6">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Registro de Actividades del Proyecto</h3>
                </div>
                <div class="box-body">
                    <form action="">
                        <div class="form-group col-xs-12">
                            <label>Objetivo del Proyecto (*)</label>
                            <select class="form-control">
                                <option>option 1</option>
                                <option>option 2</option>
                                <option>option 3</option>
                                <option>option 4</option>
                                <option>option 5</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12">
                            <label>Actividad (*)</label>
                            <input type="text" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Fecha de Inicio (*)</label>
                            <input type="month" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Fecha de Finalización (*)</label>
                            <input type="month" class="form-control">
                        </div>	
                        <div class="form-group col-xs-12">
                            <label>Responsables (*)</label>
                            <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables[]" multiple style="width: 100%;">
                                <option value="AL">Judith del Pilar Rodriguez Tenjo</option>
                                <option value="WY">Oscar Alberto Gallardo Perez</option>
                                <option value="WY">Jessica Lorena Pabón</option>
                                <option value="WY">Gladys Adriana Espinel</option>
                                <option value="WY">Milton Vera Contreras</option>
                            </select>
                        </div>
                        <br><br>
                        <div class="form-group col-xs-12 text-right">
                            <a href="" class="btn bg-red btn-flat">Registrar Actividad</a>
                        </div>  
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Modal -->
<div class="modal fade bs-example-modal-sm" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Porcentaje de Avance (*)</label>
                        <input type="number" class="form-control">
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

</body>
</html>