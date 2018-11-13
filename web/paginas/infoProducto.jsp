<%-- 
    Document   : infoProducto
    Created on : 10-nov-2018, 18:52:45
    Author     : fasap
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="../inc/header.jsp"/>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Información del Producto
            <small>A continuación podra visualizar la información del Producto.</small>
        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 col-md-5">
                <div class="box box-widget widget-user-2">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-primary">
                        <div class="widget-user-image">
                            <img class="img-circle" src="../img/products.png" alt="User Avatar">
                        </div>
                        <!-- /.widget-user-image -->
                        <h3 class="widget-user-username">Propuesta final del proyecto de investigación y extensión</h3>
                        <h5 class="widget-user-desc">Trabajo de Grado</h5>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-stacked">
                            <li>
                                <a>Tipologia: 
                                    <span class="pull-right">
                                        <b>Generación de nuevo conocimiento o desarrollo tecnológico</b>
                                    </span>
                                    <span class="clearfix"></span>
                                </a>
                            </li>
                            <li><a>Tipo de Producto: <span class="pull-right"><b>Libro</b></span></a></li>
                            <li><a>Categoria: <span class="pull-right"><b>LA1</b></span></a></li>
                        </ul>		              
                    </div>
                    <div class="box-footer no-padding">
                        <a href="registroProductos.jsp" class="btn btn-block">EDITAR PRODUCTO</a>
                    </div>
                </div>
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Información</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-file-text-o margin-r-5"></i> Proyecto al que Pertenece</strong>
                        <p class="text-muted">
                            Sistema de simulación para la Planeación Estratégica del Espacio Público: caso Av. 6 Municipio San José de Cúcuta
                        </p>
                        <hr>
                        <strong><i class="fa fa-file-text-o margin-r-5"></i> Descripción</strong>
                        <p class="text-muted">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate similique recusandae beatae illo, quia non libero aperiam consequatur nostrum ut itaque corrupti totam ducimus at natus doloribus inventore iusto quo.
                        </p>
                    </div>
                </div>		        
            </div>
            <div class="col xs-12 col-md-7">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Información del Tipo de Producto</h3>
                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                        </div>
                    </div>
                    <div class="box-body">
                        <div id="info-book" class="hidden">
                            <strong><i class="fa fa-file-text-o margin-r-5"></i> ISBN</strong>
                            <p class="text-muted">ISBN 978-3-16-148410-0</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Fecha de Publicación</strong>
                            <p class="text-muted">07/11/2018</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Autor</strong>
                            <ul>
                                <li>Autor 1</li>
                                <li>Autor 2</li>
                            </ul>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Editorial</strong>
                            <p class="text-muted">Nombre Editorial</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Lugar de Publicación</strong>
                            <p class="text-muted">Lugar de Publicación</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Certificación de la Entidad</strong>
                            <p class="text-muted">Certificación de la Entidad</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Curriculo</strong>
                            <p class="text-muted">Nombre del Curriculo</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Tipo de Desarrollo</strong>
                            <p class="text-muted">Nombre del tipo de desarrollo</p>							
                        </div>
                        <div id="info-chapter" class="hidden">
                            <strong><i class="fa fa-file-text-o margin-r-5"></i> Título del Libro</strong>
                            <p class="text-muted">Titulo del Libro</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Título del Capítulo</strong>
                            <p class="text-muted">Titulo del capitulo</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>ISBN del Libro</strong>
                            <p class="text-muted">ISBN 978-3-16-148410-0</p>
                            <hr>
                            <strong><i class="fa fa-calendar margin-r-5"></i>Fecha de Publicación</strong>
                            <p>07/11/2018</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Autor</strong>
                            <ul>
                                <li>Autor 1</li>
                                <li>Autor 2</li>
                            </ul>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Editorial</strong>
                            <p class="text-muted">Nombre de la editorial</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Lugar de Publicación</strong>
                            <p class="text-muted">Lugar de Publicación</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Certificación de la Entidad</strong>
                            <p class="text-muted">Certificación de la Entidad</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Curriculo del Capítulo</strong>
                            <p class="text-muted">Nombre del Curriculo</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Tipo de Desarrollo</strong>
                            <p class="text-muted">Nombre del tipo de desarrollo</p>							
                        </div>
                        <div id="info-article" class="hidden">
                            <strong><i class="fa fa-file-text-o margin-r-5"></i> Título del Artículo</strong>
                            <p class="text-muted">Titulo del Articulo</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Autor</strong>
                            <ul>
                                <li>Autor 1</li>
                                <li>Autor 2</li>
                            </ul>
                            <hr>
                            <strong><i class="fa fa-calendar margin-r-5"></i>Fecha de Publicación</strong>
                            <p>07/11/2018</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>ISSN</strong>
                            <p class="text-muted">ISSN 0395-2037</p>
                            <hr>			              	
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Volumen</strong>
                            <p class="text-muted">Numero de volumen</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Página Inicial</strong>
                            <p class="text-muted">Numero de pagina inicial</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Página Final</strong>
                            <p class="text-muted">Numero de pagina final</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Página Web</strong>
                            <p class="text-muted">https://pagina.com</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>DOI</strong>
                            <p class="text-muted">10.1145/1067268.1067287</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Tipo de Referencia</strong>
                            <p class="text-muted">Nombre del tipo de referencia</p>							
                        </div>
                        <div id="info-project">
                            <strong><i class="fa fa-file-text-o margin-r-5"></i> Título del Trabajo</strong>
                            <p class="text-muted">Titulo del trabajo</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Autor</strong>
                            <ul>
                                <li>Autor 1</li>
                                <li>Autor 2</li>
                            </ul>
                            <hr>
                            <strong><i class="fa fa-calendar margin-r-5"></i>Año</strong>
                            <p>2018</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>ISSN</strong>
                            <p class="text-muted">ISSN 0395-2037</p>
                            <hr>			              	
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Institución</strong>
                            <p class="text-muted">Nombre de la institución</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Director</strong>
                            <p class="text-muted">Nombre del director</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Coodirector</strong>
                            <p class="text-muted">Nombre del coodirector</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Reconocimientos</strong>
                            <p class="text-muted">Nombre de los reconocimientos</p>
                            <hr>
                            <strong><i class="fa fa-file-text-o margin-r-5"></i>Tipo de Trabajo de Grado</strong>
                            <p class="text-muted">Nombre del tipo de trabajo de grado</p>							
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../inc/footer.jsp"/>
