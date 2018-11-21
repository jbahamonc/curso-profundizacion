
$(function () {
    
    $("#tipo-proyecto").on("change", function () {
        var tipoProyecto = $("#tipo-proyecto :selected").text().toLowerCase()
        if ( tipoProyecto === "finu") {
            $("#num-contrato").removeClass("hidden")
        }
        else {
            $("#num-contrato").addClass("hidden")
        }
    })
})


