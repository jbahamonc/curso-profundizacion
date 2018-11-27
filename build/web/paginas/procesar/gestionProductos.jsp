<%-- 
    Document   : gestionProductos
    Created on : 25/11/2018, 07:54:22 PM
    Author     : jeferson
--%>

<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="Fachada.Fachada"%>
<%
    int operacion = Integer.parseInt(request.getParameter("operacion"));
    Fachada f = new Fachada();
    String id_proyecto = "";
    JSONArray data = null;
    JSONObject res = null;
    switch (operacion) {
        
        // Listar productos
        case 1:
            id_proyecto = session.getAttribute("proyecto_sesion").toString();
            data = f.listarProductosProyecto(id_proyecto);
            if ( data != null ) {
                session.setAttribute("productos", data);
                response.sendRedirect("../productosProyecto.jsp");
            }else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }
            break;
        
        // Mostrar formulario de registro
        case 2:
            data = f.cargarDatosRegistroProductosTipologi1();
            if (data != null) {
                session.setAttribute("tipologia1", data);
                response.sendRedirect("../registroProductos.jsp");
            } else {
                response.sendError(500, "Ocurrio un error en el servidor");
            }            
            break;
            
        // Cargar la subtipologia en el formulario de registro
        case 3:
            String id_tipologia = request.getParameter("id_tipo");
            data = f.cargarSubtipologia(id_tipologia);
            out.print(data);
            break;
            
        // Cargar los tipo de productos en el formulario de registro
        case 4:
            String id_subtipologia = request.getParameter("id_subtipo");
            data = f.cargarTipoProductos(id_subtipologia);
            out.print(data);
            break;
            
        // Cargar las categorias de los tipos de productos en el formulario de registro
        case 5:
            String id_catProducto = request.getParameter("id_catTipo");
            data = f.cargarCategoriasTipoProductos(id_catProducto);
            out.print(data);
            break;
            
        // registrar un articulo
        case 6:
            id_proyecto = session.getAttribute("proyecto_sesion").toString();
            String tipoProducto = request.getParameter("tipoProducto");
            String nombrePro = request.getParameter("nombreProducto");
            String descPro = request.getParameter("descProducto");
            String id_tipoPro = request.getParameter("idTipoProducto");
            if (tipoProducto.equals("articulo")) {
                System.out.println("entro articulo");
                String tipoArti = request.getParameter("tipoArti");
                String nombreArt = request.getParameter("nombreRevista");
                String title = request.getParameter("tituloArticulo");
                System.out.println("---------------------");
                System.out.println(request.getParameter("fechaPubliArt"));
                String anio = request.getParameter("fechaPubliArt").split("-")[0];
                String mes = request.getParameter("fechaPubliArt").split("-")[1];
                
                String volumen = request.getParameter("volumen");
                String numeroArt = request.getParameter("numeroArticulo");
                String pIni = request.getParameter("pageIni");
                String pFin = request.getParameter("pageFin");
                String issn = request.getParameter("issn");
                String website = request.getParameter("website");
                String doi = request.getParameter("doi");
                res = f.registrarArticulo(id_proyecto, nombrePro,descPro,id_tipoPro,tipoArti,nombreArt,title,anio,mes,volumen,numeroArt,pIni,pFin,issn,website,doi);
            }
            else if (tipoProducto.equals("capitulo")) {
                String tituloLibro = request.getParameter("tituloLibro");
                String tituloCap = request.getParameter("tituloCapitulo");
                String isbn = request.getParameter("isbn");
                String fechaPubli = request.getParameter("fechaPubli");
                String autor = request.getParameter("autor");
                String editorial = request.getParameter("editorial");
                String lugarPubli = request.getParameter("lugarPubli");
                String certEntidad = request.getParameter("certEntidad");
                String curriculo = request.getParameter("curriculo");
                String tipoDesarrollo = request.getParameter("tipoDesarrollo");
                res = f.registrarCapitulo(id_proyecto,nombrePro,descPro,id_tipoPro,tituloLibro, tituloCap,fechaPubli,autor,editorial,lugarPubli,
                        certEntidad,curriculo, tipoDesarrollo, isbn);
            }
            else if (tipoProducto.equals("libro")) {
                String titulo = request.getParameter("tituloLibro");
                String isbn = request.getParameter("isbn");
                String fechaPubli = request.getParameter("fechaPublicacion");
                String autor = request.getParameter("autoresLibro");
                String editorial = request.getParameter("editorialLibro");
                String lugarPubli = request.getParameter("lugarPubliLibro");
                String certEntidad = request.getParameter("certEntidadLibro");
                String curriculo = request.getParameter("curriculoLibro");
                String tipoDesarrollo = request.getParameter("tipoDesarrolloLibro");
                res = f.registrarLibro(id_proyecto,nombrePro,descPro,id_tipoPro,fechaPubli,autor,editorial,lugarPubli,
                        certEntidad,curriculo, tipoDesarrollo, isbn, titulo);
            }
            else if (tipoProducto.equals("software")) {
                String dnda = request.getParameter("dnda");
                String anioObtencion = request.getParameter("anioObtencio").split("-")[0];
                String analisis = request.getParameter("analisis");
                String diseño = request.getParameter("diseño");
                String implementacion = request.getParameter("implementacion");
                String validacion = request.getParameter("validacion");
                res = f.registrarSoftware(id_proyecto,nombrePro,descPro,id_tipoPro,dnda,anioObtencion,analisis,diseño,implementacion,validacion);
            }
            else if (tipoProducto.equals("tesis")) {
                String titulo = request.getParameter("tituloGrado");
                String anio = request.getParameter("anioGrado").split("-")[0];
                String institucion = request.getParameter("institucionGrado");
                String reco = request.getParameter("reconocimientos");
                res = f.registrarTesis(id_proyecto,nombrePro,descPro,id_tipoPro,titulo,anio,institucion,reco);
            }
            if ( res != null ) {
                res.put("status", 200);
            } else {
                res.put("status", 500);
            }
            out.print(res);
            break;
            
        
    }

%>
