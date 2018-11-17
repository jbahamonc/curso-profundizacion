<%-- 
    Document   : categoriasGrupos
    Created on : 10-nov-2018, 17:32:38
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
                <h2 class="info-box-text"><b>Gestion de Categorias de Grupos de Investigación.</b></h2>
                <span class="info-box-number">A continuación podra registrar, eliminar la información.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                        <div class="box-header">
                        <h3 class="box-title">Listado</h3>
                    </div>
                    <div class="box-body">
                        <table id="table-category-groups" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Categoria</th>
                                    <th class="text-center">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>A1</td>
                                    <td>
                                        <div class="text-center"> 
                                            <button type="button" data-id="1" class="btn btn-danger btn-xs btn-del-category">
                                                <i class="fa fa-trash" aria-hidden="true"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<a href="" data-toggle="modal" data-target="#modal" class="btn btn-danger pull-right btn-fixed" title="Agregar Nuevo Personal">
	<i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog">
  	<div class="modal-dialog modal-sm" role="document">
    	<div class="modal-content">
            <form action="" id="form-category-group">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Formulario de Registro</h4>
                </div>                
                <div class="modal-body"> 
                    <span class="label label-danger" style="margin-bottom: 10px">NOTA: Los campos con (*) son obligatorios</span>
                    <div class="form-group">
                        <label>Categoria (*)</label>
                        <input type="text" class="form-control input-sm" required>
                    </div>	        		
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-sm btn-flat" data-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-primary btn-sm btn-flat" id="btn-save-category-group">Guardar</button>
                </div>
            </form>
    	</div><!-- /.modal-content -->
  	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionGrupo.js"></script>

</body>
</html>