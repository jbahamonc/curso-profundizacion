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
                    $.mdtoast('El grupo ha sido creado', {
                        duration  : 5000                        
                    });  
                    document.location.href = '../paginas/gruposInvestigacion.jsp' 
                }
            })
        } else {
            $.mdtoast('Los campos marcados con (*) son requeridos', {
                duration  : 5000                
            });
        }
    })
    
})

