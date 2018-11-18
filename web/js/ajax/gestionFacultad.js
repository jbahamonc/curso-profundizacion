$(function () {
    
    $("#btn-del-facultad").on("click", function () {
        var id = $(this).data("id")
        console.log(id)
        $.ajax({
            url     : '../paginas/procesar/gestionFacultad.jsp',
            type    : 'POST',
            data    : {id : id, operacion: 2 },
            success : function ( response ) {
                console.log(response)
                if ( response.status == 200) {
                    $.mdtoast('La facultad se ha eliminado', {
                        duration  : 5000                
                    });
                } else
                    console.log("salio mal")
            }
            
        })
        
    })
})


