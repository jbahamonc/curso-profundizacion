<%-- 
    Document   : registroGrupo
    Created on : 10-nov-2018, 17:00:42
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
                <h2 class="info-box-text"><b>Registro de Grupos de Investigacion</b></h2>
                <span class="info-box-number">A continuación podra registrar la información del grupo.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Formulario de Registro</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <p>
                    <span class="label label-danger">IMPORTANTE: Todos los campos marcados con asterisco (*) son obligatorios</span>                    
                </p>
                <div class="row">
                    <form id="form-register-groups">
                        <input type="hidden" name="operacion" value="1">
                        <div class="form-group col-xs-12 col-md-8">
                            <label>Nombre del Grupo (*)</label>
                            <input type="text" class="form-control" name="nombreGrupo" required>
                        </div>				                
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Siglas (*)</label>
                            <input type="text" class="form-control" name="siglas" required>
                        </div> 
                        <div class="clearfix"></div>
                        <div class="form-group col-xs-12 col-md-2">
                            <label>Tipo Unidad Académica (*)</label>
                            <select class="form-control" name="tipoUnidadAcademica" id="tipo-unidad-academica" required>
                                <option disabled> Seleccione</option>
                                <option selected value="2">Departamento</option>
                                <option value="1">Facultad</option>
                                <option value="3">Programa</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Nombre Unidad Académica (*)</label>
                            <select class="form-control" name="nombreUnidadAcademica" id="nombre-unidad-academica" required>
                                <option disabled> Seleccione</option>
                                <option value="2" selected>Departamento de Geotecnia y Minería</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-6">
                            <label>Ubicación (*)</label>
                            <input type="text" class="form-control" name="ubicacion" required>
                        </div>    
                        <div class="clearfix"></div>
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Fecha de Creación (*)</label>
                            <input type="date" class="form-control" name="fechaCreacion" required>
                        </div>   
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Codigo GrupLav (*)</label>
                            <input type="text" class="form-control" name="codigoGruplav" required>
                        </div>  
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Clasificado Colciencias (*)</label>
                            <select class="form-control" name="clasificadoColciencias" required>
                                <option selected disabled>Seleccione</option>
                                <option value="0">SI</option>
                                <option value="1">NO</option>
                            </select>
                        </div>	
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Categoria (*)</label>
                            <select class="form-control" name="categoriaGrupo" required>
                                <option selected disabled>Seleccione</option>
                                <option selected value="2">A</option>
                            </select>
                        </div>		
                        <div class="form-group col-xs-12 col-md-3">
                            <label>Email del Grupo (*)</label>
                            <input type="email" class="form-control" name="email" required>
                        </div>
                        <div class="form-group col-xs-12 col-md-5">
                            <label>Departamento (*)</label>
                            <select class="form-control" name="nombreDepartamento" id="nombre-departamento" required>
                                <option disabled > Seleccione</option>
                                <option value="11" selected>Departamento de Sistemas</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-12 col-md-4">
                            <label>Director del Grupo (*)</label>
                            <select class="form-control" name="directorGrupo" required id="director-grupo">
                                <option selected disabled>seleccione</option>
                                <option selected value="1">Pilar Rodriguez</option>
                            </select>
                        </div>
                    </form>
                    <div class="form-group col-xs-12 text-right">
                        <button type="button" class="btn bg-red btn-flat btn-lg" id="btn-save-group">REGISTRAR GRUPO</button>
                    </div>          
                </div>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->
<jsp:include page="../inc/footer.jsp"/>
<script src="../js/ajax/gestionGrupo.js"></script>

</body>
</html>