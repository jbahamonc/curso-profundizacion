<%-- 
    Document   : infoFinanciacionProyecto
    Created on : 10-nov-2018, 18:50:46
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
                <h2 class="info-box-text"><b>Gestión de Financiación del Proyecto</b></h2>
                <span class="info-box-number">A continuación podra gestionar las fuentes de financiación del proyecto.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Listado de Fuentes de Financiación</h3>
                    </div>            
                    <div class="box-body">
                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Fuente</th>
                                    <th width="100">Valor ($)</th>
                                    <th width="100">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et auctor sem. Praesent tincidunt ligula mi, lobortis ultrices mi fermentum at. Proin a sapien ut augue condimentum ultrices</td>
                                    <td>2.000.000</td>
                                    <td class="text-center">
                                        <a href="" type="button" class="btn btn-success btn-xs">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                        </a>
                                        <a href="" type="button" class="btn btn-danger btn-xs">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
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
<a href="" data-toggle="modal" data-target="#modal" class="btn btn-danger pull-right btn-fixed add-person" title="Nuevo Plan de Acción">
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
                    <div class="form-group">
                        <label>Descripción (*)</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>	        		
                    <div class="form-group">
                        <label>Valor ($) (*)</label>
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