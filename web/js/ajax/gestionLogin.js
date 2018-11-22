$(function () {
    jQuery.validator.messages.required = 'Este campo es obligatorio.';
    jQuery.validator.messages.email = 'La direcci&oacute;n de correo no es v&aacute;lida.';

    $("#btn-login").on("click", function () {        
        var form = $("#form-login")
        if ( form.valid() ) {
            var myToast = $.mdtoast('Validando el usuario...', { duration: 1000000, init: true });
            myToast.show()
            $.ajax({
                url     : '#',
                type    : 'POST',
                //dataType : 'json',
                data     : form.serialize(),
                success  : function ( response ) {
                    //if ( response.status == 200 ) {
                    //    localStorage.setItem('token', response.token)
                        document.location.href = 'paginas/index.jsp' 
                    //} else {
                    //    $.mdtoast('Las credenciales ingresadas no son válidas', {
                    //        duration  : 7000                
                    //    });
                    //}
                }
            })
        } else {
            $.mdtoast('Debe ingresar el usuario y la contraseña', {
                duration  : 5000                
            });
        }
    })


})


