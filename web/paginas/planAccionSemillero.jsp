<%-- 
    Document   : planAccionSemillero
    Created on : 10-nov-2018, 19:06:40
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
                <h2 class="info-box-text"><b>Gestión de Planes de Acción</b></h2>
                <span class="info-box-number">A continuación podra gestionar los planes de acción del semillero de investigación.</span>
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
                                    <th width="200">Año</th>
                                    <th width="200">Semestre</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>2018</td>
                                    <td>1</td>
                                    <td class="text-center">
                                        <a href="infoPlanAccionSemillero.jsp" title="Información del Semillero" class="btn btn-success btn-xs">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </a>
                                        <a href="" data-toggle="modal" data-target="#modal-act" class="btn btn-primary btn-xs" title="Gestionar Avance de Actividades del Semillero">
                                            <i class="fa fa-bar-chart" aria-hidden="true"></i>
                                        </a>
                                        <a href="" data-toggle="modal" data-target="#modal-capacity" class="btn btn-primary btn-xs" title="Gestionar Avance de Capacitaciones del Semillero">
                                            <i class="fa fa-graduation-cap" aria-hidden="true"></i>
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
<a href="registroPlanDeAccionSemillero.jsp" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Plan de Acción">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>

<!-- Modal -->
<div class="modal fade" id="modal-act" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body"> 
                    <div class="form-group">
                        <label>Seleccione la Actividad (*)</label>
                        <select class="form-control">
                            <option disabled selected>Seleccione</option>
                            <option value="0">Actividad 1</option>
                            <option value="1">Actividad 2</option>
                            <option value="2">Actividad 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Porcentaje de Avance (%) (*)</label>
                        <input type="number" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!-- Modal -->
<div class="modal fade" id="modal-capacity" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>
                <div class="modal-body"> 
                    <div class="form-group">
                        <label>Seleccione la Capacitación (*)</label>
                        <select class="form-control">
                            <option disabled selected>Seleccione</option>
                            <option value="0">Capacitacion 1</option>
                            <option value="1">Capacitacion 2</option>
                            <option value="2">Capacitacion 3</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Porcentaje de Avance (%) (*)</label>
                        <input type="number" class="form-control">
                    </div>
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
