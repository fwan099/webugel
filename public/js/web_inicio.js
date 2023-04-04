function traer_recientes_comunicados() {
    let cantidad = 4;
    $.ajax({
        url: "controller/web_controller_comunicados_recientes.php",
        type: 'POST',
        data: {
            cantidad: cantidad
        }
    }).done(function (resp) {
        let data = JSON.parse(resp);
        var cadena = "";
        if (data.length > 0) {
            for (let i = 0; i < data.length; i++) {
                cadena += ' <div class="job-item p-4 mb-4 bg-light">' +
                    '<div class="row g-4">' +
                    '<div class="col-lg-10 d-lg-flex align-items-center">' +
                    '<img class="flex-shrink-0 img-fluid border rounded" src="admin/' + data[i]["com_imgprev"] + '" alt="" style="width: 80px; height: 80px;">' +
                    '<div class="text-start ps-lg-4 mt-3 mt-lg-0">' +
                    '<h5 class="mb-3 fs-6 text-justify">' + data[i]["com_titulo"] + '</h5>' +
                    '<span class=" me-3 text-justify fs-6"><i class="fa-solid fa-arrow-right text-primary me-2"></i>' +
                    '<p class="texto m-0 d-inline-block">' + limitarTexto(data[i]["com_descripcion"])  + '</p>' +
                    '</span>' +
                    '</div>' +
                    '</div>' +
                    '<div class=" col-lg-2 d-flex flex-column align-items-start align-items-md-end justify-content-center">' +
                    '<div class="d-flex mb-3">' +
                    '<a class="btn btn-secondary btn-rounded" href="documento?id=' + data[i]["comunicado_id"] + '"><i class="fa-solid fa-eye me-2"></i>Ver</a>' +
                    '</div>' +
                    '<small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>' + Calcular_Fecha(data[i]["com_feccreacion"]) + '</small>' +
                    '</div>' +
                    '</div>' +
                    '</div>';

            }
            cadena += '<a class="btn btn-primary btn-rounded" href="comunicados"><i class="fa-solid fa-plus me-2"></i>Mas Comunicados</a>';
            document.getElementById("tab-1").innerHTML = cadena;
        }

    });
}
function traer_recientes_oficios() {
    let cantidad = 4;
    $.ajax({
        url: "controller/web_controller_oficios_recientes.php",
        type: 'POST',
        data: {
            cantidad: cantidad
        }
    }).done(function (resp) {
        let data = JSON.parse(resp);
        var cadena = "";
        if (data.length > 0) {
            for (let i = 0; i < data.length; i++) {
                cadena += ' <div class="job-item p-4 mb-4 bg-light2">' +
                    '<div class="row g-4">' +
                    '<div class="col-lg-10 d-lg-flex align-items-center">' +
                    '<img class="flex-shrink-0 img-fluid border rounded" src="admin/' + data[i]["ofi_img_prev"] + '" alt="" style="width: 80px; height: 80px;">' +
                    '<div class="text-start ps-lg-4 mt-3 mt-lg-0">' +
                    '<h5 class="mb-3 fs-6 text-justify">' + data[i]["ofi_titulo"] + '</h5>' +
                    '<span class=" me-3 text-justify fs-6"><i class="fa-solid fa-arrow-right text-primary me-2"></i>' +
                    '<p class="texto m-0 d-inline-block">' + limitarTexto(data[i]["ofi_descripcion"])  + '</p>' +
                    '</span>' +
                    '</div>' +
                    '</div>' +
                    '<div class=" col-lg-2 d-flex flex-column align-items-start align-items-md-end justify-content-center">' +
                    '<div class="d-flex mb-3">' +
                    '<a class="btn btn-secondary btn-rounded" href="documentoOficio?id=' + data[i]["oficio_id"] + '"><i class="fa-solid fa-eye me-2"></i>Ver</a>' +
                    '</div>' +
                    '<small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>' + Calcular_Fecha(data[i]["ofi_feccreacion"]) + '</small>' +
                    '</div>' +
                    '</div>' +
                    '</div>';

            }
            cadena += '<a class="btn btn-primary btn-rounded" href="oficiosMultiples"><i class="fa-solid fa-plus me-2"></i>Mas Oficios Multiples</a>';
            document.getElementById("tab-2").innerHTML = cadena;
        }

    });
}
function traer_recientes_convocatorias() {
    let cantidad = 4;
    $.ajax({
        url: "controller/web_controller_convocatorias_recientes.php",
        type: 'POST',
        data: {
            cantidad: cantidad
        }
    }).done(function (resp) {
        let data = JSON.parse(resp);
        var cadena = "";
        if (data.length > 0) {
            for (let i = 0; i < data.length; i++) {
                cadena += ' <div class="job-item p-4 mb-4 bg-light3">' +
                    '<div class="row g-4">' +
                    '<div class="col-lg-10 d-lg-flex align-items-center">' +
                    '<img class="flex-shrink-0 img-fluid border rounded" src="public/img/conv_default.jpg" alt="" style="width: 80px; height: 80px;">' +
                    '<div class="text-start ps-lg-4 mt-3 mt-lg-0">' +
                    '<h5 class="mb-3 fs-6 text-justify">' + data[i]["conv_titulo"] + '</h5>' +
                    '<span class=" me-3 text-justify fs-6"><i class="fa-solid fa-arrow-right text-primary me-2"></i>' +
                    '<p class="texto m-0 d-inline-block"><b class="text-black">Tipo de Convocatoria: </b>' + data[i]["conv_tipo"]  + '</p>' +
                    '</span>' +
                    '</div>' +
                    '</div>' +
                    '<div class=" col-lg-2 d-flex flex-column align-items-start align-items-md-end justify-content-center">' +
                    '<div class="d-flex mb-3">' +
                    '<a class="btn btn-secondary btn-rounded" href="convocatorias"><i class="fa-solid fa-eye me-2"></i>Ver</a>' +
                    '</div>' +
                    '<small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>' + Calcular_Fecha(data[i]["conv_fecpublicacion"]) + '</small>' +
                    '</div>' +
                    '</div>' +
                    '</div>';

            }
            cadena += '<a class="btn btn-primary btn-rounded" href="convocatorias"><i class="fa-solid fa-plus me-2"></i>Mas Convocatorias</a>';
            document.getElementById("tab-3").innerHTML = cadena;
        }

    });
}


function Calcular_Fecha(fechahora) {

    let fecha = new Date(fechahora);
    let fecha2 = fecha.toLocaleDateString();
    let fechaArray = fecha2.split('/');
    let dia = fechaArray[0];
    let mes = fechaArray[1];
    let anio = fechaArray[2];
    let mesLetra = "";
    if (dia.length < 2) {
        dia = '0' + dia;
    }
    if (mes.length < 2) {
        mes = '0' + mes;
    }
    switch (mes) {
        case '01':
            mesLetra = "Enero";
            break;
        case '02':
            mesLetra = "Febrero";
            break;
        case '03':
            mesLetra = "Marzo";
            break;
        case '04':
            mesLetra = "Abril";
            break;
        case '05':
            mesLetra = "Mayo";
            break;
        case '06':
            mesLetra = "Junio";
            break;
        case '07':
            mesLetra = "Julio";
            break;
        case '08':
            mesLetra = "Agosto";
            break;
        case '09':
            mesLetra = "Setiembre";
            break;
        case '10':
            mesLetra = "Octubre";
            break;
        case '11':
            mesLetra = "Noviembre";
            break;
        case '12':
            mesLetra = "Diciembre";
            break;

    }
    return dia + ' ' + mesLetra + ' ' + anio;
}

function limitarTexto(texto) {
    let limite = 8;
    if (texto.split(" ").length > limite) {
        const palabras = texto.split(" ");
        const nuevoTexto = palabras.slice(0, limite).join(" ") + "...";
        return nuevoTexto;
    }
    return texto;
}
