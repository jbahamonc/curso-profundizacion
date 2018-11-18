$( function () {
    
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    jQuery.validator.messages.email = 'La direcci&oacute;n de correo es incorrecta.';
    
    // Init DataTable of Groups
    var tableCategoryGroups = $('#table-category-groups').DataTable();
    
    // Registrar grupos de investigación
    $("#btn-save-group").on("click", function () {        
        var form = $("#form-register-groups")        
        var state = form.valid()
        if ( state ) {
            var myToast = $.mdtoast('Registro en proceso...', { duration: 1000000, init: true });
            myToast.show()
            var token = localStorage.getItem("token")
            form = form.serializeArray()
            form.push({ token : token })
            $.ajax({
                url      : '../paginas/procesar/gestionGrupos.jsp',
                type     : 'POST',
                data     : $.param(form),
                success  : function ( response ) { 
                    myToast.hide()
                    var res = JSON.parse(response)
                    if (res.status != 200) {                        
                        document.location.href = '../paginas/procesar/gestionGrupos.jsp?id_grupo='+res.id_grupo+'$operacion='+2+'$token='+token 
                    } else {
                        $.mdtoast('Lo sentimos!, Ocurrio un problema en el sistema', {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son requeridos', {
                duration  : 5000                
            });
        }
    })
    
    // Eliminar un grupo de investigación
    $("#btn-del-group").on("click", function () {
        var btn = $(this)
        $.ajax({
            url      : '#',
            type     : 'GET',
//            dataType : 'json',
            data     : { id_group : btn.data('id'), token : localStorage.getItem('token') },
            success  : function ( response ) { 
                console.log(response)
//                if ( response.status == 201 ) {                    
                    btn.parent().parent().remove()
//                    $.DataTable.draw()
//                }
                $.mdtoast('El grupo de investigación se ha eliminado', {
                    duration  : 5000                
                });
            }
        })        
    })
    
    // Cargar la unidad academica dependiendo de la seleccion en registro de grupos
    $("#tipo-unidad-academica").on("change", function () {
        var myToast = $.mdtoast('Cargando unidades académicas...', { duration: 100000, init: true });
        myToast.show()
        var id = $(this).val()
        $.ajax({
            url      : '../paginas/procesar/gestionGrupos.jsp?id='+id+'operacion=5&token='+localStorage.getItem('token'),
            type     : 'GET',
//            dataType : 'json',
            success  : function ( response ) { 
                console.log(response)
                myToast.hide()
//                if ( response.status == 201 ) {                   
//                    var select = $("#nombre-unidad-academica")
//                    select.empty()
//                    var html = "<option selected disabled>Seleccione</option>"
//                    for (var unidad  in response) {
//                        html += "<option value='"+unidad.id_unidad+"'>"+unidad.nombre+"</option>"
//                    }
//                    select.html(html)
//                }                
            }
        })        
    })
    
    // Select que carga los docentes dependiendo del departamento al que pertenezcan
    $("#nombre-departamento").on("change", function () {
        var myToast = $.mdtoast('Cargando docentes...', { duration: 100000, init: true });
        myToast.show()
        var id = $(this).val()
        $.ajax({
            url      : '../paginas/procesar/gestionDepartamentos.jsp?id='+id+'operacion=2&token='+localStorage.getItem('token'),
            type     : 'GET',
//            dataType : 'json',
            success  : function ( response ) {
                myToast.hide()
                console.log(response)                
//                if ( response.status == 201 ) {                   
//                    var select = $("#director-grupo")
//                    select.empty()
//                    var html = "<option selected disabled>Seleccione</option>"
//                    for (var unidad  in response) {
//                        html += "<option value='"+unidad.id_unidad+"'>"+unidad.nombre+"</option>"
//                    }
//                    select.html(html)
//                }                
            }
        })        
    })
    
    // Registrar una categoria del grupo de investigacion
    $("#btn-save-category-group").on("click", function () {
        var form = $("#form-category-group")
        if ( form.valid() ) {
            $.ajax({
                url      : '#',
                type     : 'POST',
    //            dataType : 'json',
                data     : { 
                    nombreCategoria : form.serialize(), 
                    token : localStorage.getItem('token') 
                },
                success  : function ( response ) { 
    //                if ( response.status == 201 ) {  
                        tableCategoryGroups.row.add([
                            1,
                            "nueva categoria",
                            "<div class='text-center'>\n\
                                <button type='button' data-id='' class='btn btn-danger btn-xs btn-del-category'><i class='fa fa-trash' aria-hidden='true'></i>\n\
                            </button></div>"
                        ]).draw()

                        $.mdtoast('La categoria se ha registrado', {
                            duration  : 5000                
                        });                  
    //                }                
                }
            })    
        } else {
            $.mdtoast('El nombre de la categoria es requerido', {
                duration  : 5000                
            });
        }
    })
    
    // Eliminar una categoria de los grupos de investigacion
    $("#table-category-groups").on("click", ".btn-del-category", function (e) {
        var btn = $(e.currentTarget)
        $.ajax({
            url      : '#',
            type     : 'GET',
//            dataType : 'json',
            data     : {
                id_categoria : btn.data('id'),
                token        : localStorage.getItem("token")
            },
            success  : function ( response ) {
                tableCategoryGroups.row(btn.parents('tr')).remove().draw()
                $.mdtoast('La categoria se ha eliminado', {
                    duration  : 5000                
                }); 
            }
        })
    })
    
})

