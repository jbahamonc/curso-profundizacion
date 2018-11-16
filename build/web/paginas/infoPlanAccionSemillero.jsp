<%-- 
    Document   : infoPlanAccionSemillero
    Created on : 10-nov-2018, 19:09:35
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Información del Plan de Acción
            <small>A continuación podra visualizar la información del plan de acción correspondiente.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-navy">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/plan.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <h3 class="widget-user-username">Plan de Acción</h3>
                        <h5 class="widget-user-desc">Semillero de Investigación de Desarrollo de Aplicaciones Web</h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Director: <span class="pull-right"><b>Judith del Pilar Rodríguez Tenjo <br>Nelson Beltran</b></span><span class="clearfix"></span></a></li>
                            <li><a>Departamento: <span class="pull-right"><b>Departamento de Ingenieria</b></span></a></li>
                            <li><a>Facultad: <span class="pull-right"><b>Facultad de Ingeniería</b></span></a></li>
                            <li><a>Año: <span class="pull-right"><b>2018</b></span></a></li>
                            <li><a>Semestre Académico: <span class="pull-right"><b>2</b></span></a></li>
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="registroPlanDeAccion.jsp" class="btn btn-block bg-navy btn-flat">Editar Plan de Acción</a>
                    </div>
                </div>	  
                <div class="box box-navy">
                    <div class="box-header with-border">
                        <h3 class="box-title">Otras Actividades de Investigación</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" class="collapsed">Caracterización de la dirección de proyectos de tecnología en las  pequeñas y medianas empresas</a>
                                    </h4>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-xs btn-danger" title="Eliminar Actividad" >
                                          <i class="fa fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="box-body">
                                        <strong><i class="fa fa-users margin-r-5"></i> Responsable</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-calendar margin-r-5"></i> Fecha de realización</strong>
                                        <p class="text-muted">Febrero 2018 – Noviembre 2018</p>
                                        <hr>
                                        <strong><i class="fa fa-book margin-r-5"></i> Producto</strong>
                                        <p class="text-muted">Envío de Articulo para publicación  Journal Physic ConferenCes</p>
                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" class="collapsed">Uso de un repositorio digital como un recurso de comunicación que integra tecnologías de información  mediante una estrategia de visibilidad e impacto de la producción</a>
                                    </h4>
                                    <div class="pull-right">
                                        <button type="button" class="btn btn-xs btn-danger" title="Eliminar Actividad" >
                                          <i class="fa fa-trash"></i>
                                        </button>
                                    </div>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse" aria-expanded="false" style="height: 0px">
                                    <div class="box-body">
                                        <strong><i class="fa fa-users margin-r-5"></i> Responsable</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-calendar margin-r-5"></i> Fecha de realización</strong>
                                        <p class="text-muted">Febrero 2018 – Noviembre 2018</p>
                                        <hr>
                                        <strong><i class="fa fa-book margin-r-5"></i> Producto</strong>
                                        <p class="text-muted">Envío de Articulo para publicación  Journal Physic ConferenCes</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div> 
            </div>
            <div class="col-xs-12 col-md-7">
                <div class="box box-navy">
                    <div class="box-header with-border">
                        <h3 class="box-title">Proyectos Asociados al Plan de Acción</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a href="infoProyecto.jsp" class="">Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta</a>
                                </h4>
                                <div class="pull-right">
                                    <button type="button" class="btn btn-xs btn-danger" title="Eliminar Proyecto" >
                                      <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div> 
                <div class="box box-navy">
                    <div class="box-header with-border">
                        <h3 class="box-title">Capacitaciones</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a href="" data-toggle="modal" data-target="#modalCapacitacion">Capacitacion para la construcción de la plataforma tecnológica para el repositorio digital de la Universidad Francisco De Paula Santander que permita recoger y dar acceso libre a los resultados de los productos académicos y de investigación
                                </h4>
                                <div class="pull-right">
                                    <button type="button" class="btn btn-xs btn-danger" title="Eliminar Capacitacion" >
                                      <i class="fa fa-trash"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
            </div>
        </div>
    </section>
</div>
<a href="registroPlanDeAccionSemillero.jsp" class="btn btn-danger pull-right btn-fixed" title="Agregar Proyectos, Eventos o Capacitaciones">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>

</body>
</html>