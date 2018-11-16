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
                    $.DataTable.draw()
//                }
                $.mdtoast('EL texto a mostrar', {
                    duration  : 5000                
                });
            }
        })        
    })
    
})

