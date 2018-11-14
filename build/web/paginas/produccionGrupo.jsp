<%-- 
    Document   : produccionTipologia
    Created on : 13/11/2018, 12:02:38 PM
    Author     : jeferson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header no-index">
        <section class="content-header">
            <h1>
              Consulta de Producción por Grupos
              <small>Conozca la productividad por grupo por cada perfil de producción.</small>
            </h1>
        </section>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Consulta</h3>
            </div>
            <div class="box-body">
                <p><span class="label label-danger">NOTA: Los campos marcados con asterisco (*) son obligatorios</span></p>
                <br>
                <div class="row">
                    <form>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-xs-12 col-md-2 control-label">Nombre del Grupo (*)</label>
                            <div class="col-xs-12 col-md-8">
                                <select class="form-control" id="">
                                    <option disabled selected>Seleccione</option>
                                    <option value="0">Tipología 1</option>
                                    <option value="1">Tipología 2</option>
                                    <option value="2">Tipología 3</option>
                                </select>
                            </div>
                            <div class="form-group col-xs-12 col-md-2">
                                <button type="button" class="btn bg-red btn-flat" id="btn-consult-productivity">Consultar</button>
                            </div>
                            <div class="clearfix"></div>
                        </div>             
                    </form>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Productividad del Grupo</h3>
            </div>
            <div class="box-body">
                <div class="row hidden" id="data-productivity">
                    <div class="col-xs-12 col-md-6">
                        <h4 class="text-center"><strong>Generación de Nuevo Conocimiento</strong></h4>
                        <div class="progress-group">
                            <span class="progress-text">Artículos</span>
                            <span class="progress-number"><b>10</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Libros</span>
                            <span class="progress-number"><b>5</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Capítulos</span>
                            <span class="progress-number"><b>2</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-green" style="width: 20%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Eventos Científicos</span>
                            <span class="progress-number"><b>20</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-yellow" style="width: 90%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <h4 class="text-center"><strong>Productos resultados de actividades de investigación, desarrollo e innovación </strong></h4>
                        <div class="progress-group">
                            <span class="progress-text">Tecnológicos</span>
                            <span class="progress-number"><b>10</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Empresariales</span>
                            <span class="progress-number"><b>5</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Regulaciones, normas</span>
                            <span class="progress-number"><b>2</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-green" style="width: 20%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Consultorías</span>
                            <span class="progress-number"><b>20</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-yellow" style="width: 90%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <h4 class="text-center"><strong>Apropiación Social del Conocimiento</strong></h4>
                        <div class="progress-group">
                            <span class="progress-text">Tecnológicos</span>
                            <span class="progress-number"><b>10</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Empresariales</span>
                            <span class="progress-number"><b>5</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Regulaciones, normas</span>
                            <span class="progress-number"><b>2</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-green" style="width: 20%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Consultorías</span>
                            <span class="progress-number"><b>20</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-yellow" style="width: 90%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <h4 class="text-center"><strong>Formación de Recursos Humanos</strong></h4>
                        <div class="progress-group">
                            <span class="progress-text">Tecnológicos</span>
                            <span class="progress-number"><b>10</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-aqua" style="width: 80%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Empresariales</span>
                            <span class="progress-number"><b>5</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-red" style="width: 40%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Regulaciones, normas</span>
                            <span class="progress-number"><b>2</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-green" style="width: 20%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                        <div class="progress-group">
                            <span class="progress-text">Consultorías</span>
                            <span class="progress-number"><b>20</b></span>
                            <div class="progress sm">
                                <div class="progress-bar progress-bar-yellow" style="width: 90%"></div>
                            </div>
                        </div>
                        <!-- /.progress-group -->
                    </div>
                </div>
                <div class="row" id="data-productivity-empty">
                    <h3 class="text-center">Seleccione el boton <b>Consultar</b> para ver la información.</h3>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../inc/footer.jsp"/>
