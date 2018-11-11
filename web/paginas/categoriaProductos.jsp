<%-- 
    Document   : categoriaProductos
    Created on : 10-nov-2018, 18:01:41
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
	          	<h2 class="info-box-text"><b>Gestión de Categoría de Productos</b></h2>
	          	<span class="info-box-number">A continuación podra gestionar las categorías de los productos.</span>
	        </div>
	    </div>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
		              	<h3 class="box-title">Listado de Categorías de Tipos de Productos</h3>
		            </div>
		            <div class="box-body">
		            	<table id="example" class="table table-striped table-bordered" style="width:100%">
					        <thead>
					            <tr>
					                <th>#</th>
					                <th>Tipología</th>
					                <th>Subtipología</th>
					                <th>Tipo de Producto</th>
					                <th>Categoría</th>
					                <th>Acciones</th>
					            </tr>
					        </thead>
					        <tbody>
					            <tr>
					                <td>1</td>
					                <td>Productos Resultados de Actividades de Desarrollo Tecnológico e Innovación</td>
					                <td>Producto Tecnológico Certificado Validados</td>
					                <td>Software</td>
					                <td>SFAC1</td>
					                <td class="text-center">
					                	<button type="button" class="btn btn-danger btn-xs">
					                		<i class="fa fa-trash" aria-hidden="true"></i>
					                	</button>
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
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
    		<form action="">
	      		<div class="modal-header">
	        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        		<h4 class="modal-title">Formulario de Registro</h4>
	      		</div>
	      		<div class="modal-body">
	      			<div class="form-group">
	                  	<label>Seleccione la Tipología (*)</label>
	                  	<select class="form-control" id="select-rol-investigador">
	                  		<option disabled selected>Seleccione</option>
		                    <option value="0">Tipología 1</option>
		                    <option value="1">Tipología 2</option>
		                    <option value="2">Tipología 3</option>
	                  	</select>
	                </div>	
	                <div class="form-group">
	                  	<label>Seleccione la Subtipología (*)</label>
	                  	<select class="form-control" id="select-rol-investigador">
	                  		<option disabled selected>Seleccione</option>
		                    <option value="0">Subtipología 1</option>
		                    <option value="1">Subtipología 2</option>
		                    <option value="2">Subtipología 3</option>
	                  	</select>
	                </div>   
	                <div class="form-group">
	                  	<label>Seleccione el Tipo de Producto (*)</label>
	                  	<select class="form-control" id="select-rol-investigador">
	                  		<option disabled selected>Seleccione</option>
		                    <option value="0">Subtipología 1</option>
		                    <option value="1">Subtipología 2</option>
		                    <option value="2">Subtipología 3</option>
	                  	</select>
	                </div>      		
        			<div class="form-group">
	                  	<label>Nombre de la Categoría</label>
	                  	<input type="text" class="form-control">
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