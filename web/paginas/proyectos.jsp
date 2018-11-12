<%-- 
    Document   : proyectos
    Created on : 10-nov-2018, 18:12:49
    Author     : fasap
--%>

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
                        <tr>
                            <td>1</td>
                            <td>Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta</td>
                            <td>Judith del Pilar Rodríguez T <br>Oscar A. Gallardo Pérez <br>Jessica Lorena Pabón</td>
                            <td>INGENIERIA DE SOFTWARE</td>
                            <td>Marzo 2018</td>
                            <td>5</td>
                            <td>$ 400.000.000</td>
                            <td class="text-center">
                                <a href="infoProyecto.jsp" title="Información del Proyecto" type="button" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                                <a href="" data-toggle="modal" data-target="#modal" type="button" title="Finalizar Proyecto" class="btn btn-warning btn-xs">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="registrarProyecto.jsp" class="btn btn-danger pull-right btn-fixed" title="Agregar Nuevo Personal">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>

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
                    <div class="alert alert-info alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-info"></i> Importante!</h4>
                        Indicar los resultados directos verificables que se alcanzaron con el desarrollo del proyecto mediante una breve descripción.
                         <br>Los resultados pueden ser: 
                         <ul>
                             <li>1. Generación de nuevo conocimiento o desarrollo tecnológico</li>
                             <li>2. Fortalecimiento de la capacidad científica tecnológica</li>
                             <li>3. Apropiación social de conocimiento</li>
                             <li>4. Otro</li>
                         </ul>
                    </div>                    
                    <div class="form-group col-xs-12">
                        <label>Resultados Obtenidos (*)</label>
                        <textarea  class="form-control" rows="3"></textarea>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>