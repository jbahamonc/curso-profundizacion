$( function () {
    
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
    jQuery.validator.messages.email = 'La direcci&oacute;n de correo es incorrecta.';
    
    // Registrar grupos de investigación
    $("#btn-save-group").on("click", function () {
        var form = $("#form-register-groups")
        var state = form.valid()
        if ( state ) {
            $.ajax({
                url      : '#',
                type     : 'POST',
                data     : form.serialize(),
                success  : function ( response ) { 
                    document.location.href = '../paginas/gruposInvestigacion.jsp' 
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
        var tipo = $("#tipo-unidad-academica :selected").text().toLowerCase()
        $.ajax({
            url      : '#',
            type     : 'POST',
//            dataType : 'json',
            data     : { 
                tipoUnidad : tipo, 
                token      : localStorage.getItem('token') },
            success  : function ( response ) { 
                console.log(tipo)
//                if ( response.status == 201 ) {                   
                    var select = $("#nombre-unidad-academica")
                    select.empty()
                    var html = "<option selected disabled>Seleccione</option>"
                    for (var unidad  in response) {
                        html += "<option value='"+unidad.id_unidad+"'>"+unidad.nombre+"</option>"
                    }
                    select.html(html)
//                }                
            }
        })        
    })
    
})

