<%-- 
    Document   : participantesSemillero
    Created on : 10-nov-2018, 19:02:05
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
                <h2 class="info-box-text"><b>Panel de Gestión de Participantes</b></h2>
                <span class="info-box-number">A continuación podra gestionar los participantes asociados al semillero de investigación.</span>
            </div>
        </div>
    </section>
    <section class="content">
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Listado de Participantes</h3>
            </div>
            <div class="box-body">
                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Tipo Identificación</th>
                            <th>Identificación</th>
                            <th>Codigo</th>
                            <th>Nombre Completo</th>
                            <th>Tipo Participante</th>
                            <th>Contacto</th>
                            <th>Email</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>C.C</td>
                            <td>1090267543</td>
                            <td>1150428</td>
                            <td>Garrett Winters</td>
                            <td>Estudiante</td>
                            <td>3134567653 - 5768967</td>
                            <td>correo@ufps.edu.co</td>
                            <td class="text-center">
                                <button type="button" class="btn btn-danger btn-xs">
                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-success btn-xs">
                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</div>
<!-- /END CONTENT WRAPPER -->
<a href="registroInvestigadores.jsp" class="btn btn-danger pull-right btn-fixed add-person" title="Agregar Nuevo Personal">
    <i class="fa fa-plus" style="vertical-align: bottom;"></i>
</a>
<jsp:include page="../inc/footer.jsp"/>
