$(function () {
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.email = 'La direcci&oacute;n de correo no es v&aacute;lida.';

    $("#btn-login").on("click", function () {        
        var form = $("#form-login")
        if ( form.valid() ) {
            var myToast = $.mdtoast('Validando el usuario...', { duration: 1000000, init: true });
            myToast.show()
            $.ajax({
                url     : '../paginas/procesar/gestionLogin.jsp',
                type    : 'POST',
                data     : form.serialize(),
                success  : function ( response ) {
                    var obj = JSON.parse(response)
                    console.log(obj)
                    if ( obj.exito === "1" ) {
                        document.location.href = '../paginas/index.jsp' 
                    } else {
                        $.mdtoast("El usuario o la contraseña no son correctos", {
                            duration  : 5000                
                        });
                    }
                }
            })
        } else {
            $.mdtoast('Debe ingresar el usuario y la contraseña', {
                duration  : 5000                
            });
        }
    })


})


