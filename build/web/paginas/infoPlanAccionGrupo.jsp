<%-- 
    Document   : infoPlanAccionGrupo
    Created on : 10-nov-2018, 18:27:33
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Información del Plan de Acción
            <small>A continuación podra visualizar la información del plan de acción.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-aqua">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/plan.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <h3 class="widget-user-username">Plan de Acción</h3>
                        <h5 class="widget-user-desc">Grupo de Investigación y Desarrollo de Ingeniería del Software</h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li><a>Unidad Académica: <span class="pull-right"><b>Ingeniería</b></span></a></li>
                            <li><a>Director: <span class="pull-right"><b>Judith del Pilar Rodríguez Tenjo</b></span></a></li>
                            <li><a>Departamento: <span class="pull-right"><b>Departamento de Sistemas e Informática</b></span></a></li>
                            <li><a>Facultad: <span class="pull-right"><b>Ingeniería</b></span></a></li>
                            <li><a>Año: <span class="pull-right"><b>2018</b></span></a></li>
                            <li><a>Semestre Académico: <span class="pull-right"><b>2</b></span></a></li>
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="registroPlanDeAccion.jsp" class="btn btn-block">EDITAR PLAN DE ACCIÓN</a>
                    </div>
                </div>	
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Organización de Eventos</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" class="collapsed">EIISI 2018</a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="box-body">
                                        <strong><i class="fa fa-globe margin-r-5"></i> Carácter de Evento</strong>
                                        <p class="text-muted">Internacional</p>
                                        <hr>
                                        <strong><i class="fa fa-calendar margin-r-5"></i> Fecha de realización</strong>
                                        <p class="text-muted">Septiembre 2018</p>
                                        <hr>
                                        <strong><i class="fa fa-users margin-r-5"></i> Responsable</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-university margin-r-5"></i> Institución Promotora</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-industry margin-r-5"></i> Entidades Participantes</strong>
                                        <p class="text-muted">Universidades - Empresas - Sector de Ingeniería</p>

                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" class="collapsed">EIISI 2019</a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px">
                                    <div class="box-body">
                                        <strong><i class="fa fa-globe margin-r-5"></i> Carácter de Evento</strong>
                                        <p class="text-muted">Internacional</p>
                                        <hr>
                                        <strong><i class="fa fa-calendar margin-r-5"></i> Fecha de realización</strong>
                                        <p class="text-muted">Septiembre 2018</p>
                                        <hr>
                                        <strong><i class="fa fa-users margin-r-5"></i> Responsable</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-university margin-r-5"></i> Institución Promotora</strong>
                                        <p class="text-muted">UFPS - UDES - UNILIBRE - UNISIMON - UFPSO</p>
                                        <hr>
                                        <strong><i class="fa fa-industry margin-r-5"></i> Entidades Participantes</strong>
                                        <p class="text-muted">Universidades - Empresas - Sector de Ingeniería</p>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="box box-info">
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
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Proyectos por Linea de Investigación</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" class="collapsed">INGENIERIA DE SOFTWARE</a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="box-body no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="" data-toggle="modal" data-target="#modal">Arquitectura de Información (AI) Como Marco De Trabajo Que Proporcione Un Enfoque Para El Diseño, Planificación, Implementación Y Gobierno De Una Arquitectura Empresarial De Información Para La Creación Del Repositorio Digital Que  Gestione La Producción Académica E Investigativa De Los Investigadores  De La Universidad Francisco De Paula Santander-Cúcuta</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" class="collapsed">LAS TIC Y SUS IMPLICACIONES EN LA EDUCACION</a>
                                    </h4>
                                </div>
                                <div id="collapseEight" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="box-body no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="" data-toggle="modal" data-target="#modal">E-LEARNING EN LA UFPS Fase III  (Proyecto en desarrollo)</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div> 
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Participación en Dirección</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                            <div class="">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" class="collapsed">INGENIERIA DE SOFTWARE</a>
                                    </h4>
                                </div>
                                <div id="collapseNine" class="panel-collapse collapse" aria-expanded="false">
                                    <div class="box-body no-padding">
                                        <ul class="nav nav-stacked">
                                            <li>
                                                <a href="" data-toggle="modal" data-target="#modalParticipacion">Construcción de la plataforma tecnológica para el repositorio digital de la Universidad Francisco De Paula Santander que permita recoger y dar acceso libre a los resultados de los productos académicos y de investigación</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Información del Proyecto</h4>
            </div>
            <div class="modal-body no-padding">
                <ul class="nav nav-stacked">
                    <li>
                        <a style="border-left: 0">Lider de la Linea:<span class="pull-right"><b>Judith del Pilar Rodríguez Tenjo</b></span></a>
                    </li>
                    <li>
                        <a style="border-left: 0">Responsables del Proyecto:<span class="pull-right"><b>Judith del Pilar Rodríguez T<br>Oscar A. Gallardo Pérez<br>Jessica Lorena Pabón</b></span>
                            <span class="clearfix"></span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="modal-body">
                <div class="box box-solid" style="box-shadow: none;">
                    <div class="box-header with-border">
                        <h3 class="box-title">Objetivos del Proyecto</h3>
                    </div>
                    <div class="box-group" id="accordion">
                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                        <div class="">
                            <div class="box-header">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" class="collapsed">Definir Arquitectura de Información (AI) que permita construir la arquitectura empresarial</a>
                                </h4>
                            </div>
                            <div id="collapseSix" class="panel-collapse collapse" aria-expanded="false">
                                <div class="box-body no-padding">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a>Fecha de Inicio:<span class="pull-right"><b>Marzo 2018</b></span></a>
                                        </li>
                                        <li>
                                            <a>Fecha de Terminación:<span class="pull-right"><b>Junio 2018</b></span></a>
                                        </li>
                                        <li>
                                            <a>Responsables:<span class="pull-right"><b>Judith del Pilar Rodríguez T<br>Oscar A. Gallardo Pérez<br>Jessica Lorena Pabón</b></span>
                                                <span class="clearfix"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Producto:<span class="pull-right"><b>I  Informe parcial</b></span></a>
                                        </li>
                                        <li>
                                            <a>Actividades:
                                                <ul>
                                                    <li>
                                                        Identificar la documentación a presentar en cuanto a la producción intelectual de los investigadores de la UFPS que sea visible a la comunidad académica e investigativa
                                                    </li>
                                                    <li>
                                                        Seleccionar la productividad de los Grupos de Investigación UFPS ventana 
                                                    </li>
                                                </ul>
                                            </a>
                                        </li>
                                    </ul>							            
                                </div>
                            </div>
                        </div>
                        <div class="">
                            <div class="box-header">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" class="collapsed">Revisar las etapas, conceptos y herramientas para la organización de contenidos (análisis, descripción, indización, y clasificación) y el uso de estos que permita construir un producto como expresión de un sistema de información, buscando facilitar la organización y acceso a los contenidos y servicios disponibles en los mismos.</a>
                                </h4>
                            </div>
                            <div id="collapseSeven" class="panel-collapse collapse" aria-expanded="false">
                                <div class="box-body no-padding">
                                    <ul class="nav nav-stacked">
                                        <li>
                                            <a>Fecha de Inicio:<span class="pull-right"><b>Marzo 2018</b></span></a>
                                        </li>
                                        <li>
                                            <a>Fecha de Terminación:<span class="pull-right"><b>Junio 2018</b></span></a>
                                        </li>
                                        <li>
                                            <a>Responsables:<span class="pull-right"><b>Judith del Pilar Rodríguez T<br>Oscar A. Gallardo Pérez<br>Jessica Lorena Pabón</b></span>
                                                <span class="clearfix"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>Producto:<span class="pull-right"><b>I  Informe parcial</b></span></a>
                                        </li>
                                        <li>
                                            <a>Actividades:
                                                <ul>
                                                    <li>
                                                        Identificar la documentación a presentar en cuanto a la producción intelectual de los investigadores de la UFPS que sea visible a la comunidad académica e investigativa
                                                    </li>
                                                    <li>
                                                        Seleccionar la productividad de los Grupos de Investigación UFPS ventana 
                                                    </li>
                                                </ul>
                                            </a>
                                        </li>
                                    </ul>							            
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Modal -->
<div class="modal fade" id="modalParticipacion" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Información del Participación en Dirección</h4>
            </div>
            <div class="modal-body no-padding">
                <ul class="nav nav-stacked">
                    <li>
                        <a style="border-left: 0">Tipo:<span class="pull-right"><b>Trabajo de Grado - Pregrado</b></span></a>
                    </li>
                    <li>
                        <a style="border-left: 0">Nombre Estudiante:<span class="pull-right"><b>Farid Santiago Peñaranda Trigos <br>Carlos Augusto Quintero Quintero <br>Edgar Mauricio Peñaranda Fajardo</b></span>
                            <span class="clearfix"></span>
                        </a>
                    </li>
                    <li>
                        <a style="border-left: 0">Director:<span class="pull-right"><b>Judith del Pilar Rodríguez T - Director <br>Oscar A. Gallardo Pérez - Co-director</b></span>
                            <span class="clearfix"></span>
                        </a>
                    </li>
                    <li>
                        <a style="border-left: 0">Programa Académico:<span class="pull-right"><b>Ingeniera de Sistemas</b></span>
                        </a>
                    </li>
                    <li>
                        <a style="border-left: 0">Institución:<span class="pull-right"><b>UFPS</b></span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<jsp:include page="../inc/footer.jsp"/>