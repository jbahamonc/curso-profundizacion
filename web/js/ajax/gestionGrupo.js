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
                    console.log("Los datos se ha registrado")
                    form[0].reset()
                }
            })
        } else {
            console.log("no se ingresaron todos los datos")
        }
    })
    
})

