<%-- 
    Document   : integrantesProyecto
    Created on : 10-nov-2018, 18:49:33
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
                <h2 class="info-box-text"><b>Gestión de Investigadores</b></h2>
                <span class="info-box-number">A continuación podra gestionar los investigadores asociados al proyecto.</span>
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
                            <th>Tipo Documento</th>
                            <th>Identificación</th>
                            <th>Nombre Completo</th>
                            <th>Teléfono</th>
                            <th>Celular</th>
                            <th>Email</th>
                            <th>Rol Investigador</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>C.C</td>
                            <td>1.116.789.304</td>
                            <td>Judith del Pilar Rodríguez T</td>
                            <td>5775665</td>
                            <td>3124542345</td>
                            <td>email@ufps.edu.co</td>
                            <td>Responsable del proyecto</td>
                            <td class="text-center">
                                <a href="" type="button" class="btn btn-danger btn-xs" title="Desvincular Investigador">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </a>
                                <a href="" type="button" class="btn btn-success btn-xs hidden">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<a href="" data-toggle="modal" data-target="#modal" class="btn btn-danger pull-right btn-fixed" title="Vincular Nuevo Integrante">
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
                        Una vez seleccione el campo <i>Rol del Investigador</i>, se mostrara la información adicional para ser registrada.
                    </div>	        		
                    <div class="form-group">
                        <label>Rol del Investigador (*)</label>
                        <select class="form-control" id="select-rol-investigador">
                            <option disabled selected>Seleccione</option>
                            <option value="0">Responsable de Proyecto</option>
                            <option value="1">Cooinvestigador</option>
                            <option value="2">Estudiante</option>
                        </select>
                    </div>
                    <div class="form-group hidden" id="rol-responsable" class="hidden">
                        <label>Seleccione los Resposables del  Proyecto (*)</label>
                        <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables-proyecto[]" multiple style="width: 100%;">
                            <option>Docente 1 - Grupo</option>
                            <option>Docente 2 - Grupo</option>
                            <option>Docente 3 - Grupo</option>
                        </select>
                    </div>
                    <div class="form-group hidden" id="rol-cooinvestigador">
                        <label>Seleccione los Cooinvestigadores del Proyecto (*)</label>
                        <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables-proyecto[]" multiple style="width: 100%;">
                            <option>Cooinvestigador 1</option>
                            <option>Cooinvestigador 2</option>
                            <option>Cooinvestigador 3</option>
                        </select>
                    </div>
                    <div class="form-group hidden" id="rol-estudiante">
                        <label>Seleccione los Estudiantes Asociados al Proyecto (*)</label>
                        <select class="js-example-basic-multiple1" data-placeholder="Seleccione uno o varios investigadores" name="responsables-proyecto[]" multiple style="width: 100%;">
                            <option>Estudiante 1</option>
                            <option>Estudiante 2</option>
                            <option>Estudiante 3</option>
                        </select>
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
