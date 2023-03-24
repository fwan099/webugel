var tbl_comunicado;
function listar_comunicado() {
    tbl_comunicado = $("#tabla_comunicado").DataTable({
        "ordering": false,
        "bLengthChange": true,
        "searching": { "regex": false },
        "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
        "pageLength": 10,
        "destroy": true,
        "async": true,
        "processing": true,
        "ajax": {
            "url": "../controller/comunicado/controller_listar_comunicado.php",
            type: 'POST'
        },
        "columns": [
            { "defaultContent": "" },
            { "data": "com_titulo" },
            { "defaultContent": "<button class='mas btn btn-info btn-sm'><i class='fas fa-eye'></i></button>" },
            { "data": "com_feccreacion" },
            {
                "data": "com_estado", render: function (data, type, row) {
                    if (data == 'ACTIVO') {
                        return '<span class="badge bg-success">ACTIVO</span>';
                    } else {
                        return '<span class="badge bg-danger">INACTIVO</span>';
                    }
                }
            },
            { "defaultContent": "<button class='editar btn btn-secondary btn-sm'><i class='fas fa-pencil-alt'></i></button>&nbsp<button class=' eliminar btn btn-danger btn-sm'><i class='fa-solid fa-trash'></i></button>" },
        ],

        "language": idioma_espanol,
        select: true
    });
    tbl_comunicado.on('draw.td', function () {
        var PageInfo = $("#tabla_comunicado").DataTable().page.info();
        tbl_comunicado.column(0, { page: 'current' }).nodes().each(function (cell, i) {
            cell.innerHTML = i + 1 + PageInfo.start;
        });
    });
}


$('#tabla_comunicado').on('click', '.mas', function () {
    let data = tbl_comunicado.row($(this).parents('tr')).data();
    if (tbl_comunicado.row(this).child.isShown()) {
        data = tbl_comunicado.row(this).data();
    }
    $("#modal_mas").modal('show');
    document.getElementById('txt_idcom_mas').value = data.comunicado_id;
    document.getElementById('txt_area_mas').value = data.area_nombre;
    document.getElementById('txt_fecha_mas').value = data.com_feccreacion;
    document.getElementById('txt_estado_mas').value = data.com_estado;
    document.getElementById('txt_titulo_mas').value = data.com_titulo;
    document.getElementById('txt_desc_mas').value = data.com_descripcion;
    document.getElementById('img_prev_mas').src = "../" + data.com_imgprev;
    document.getElementById('pdf_doc_mas').src = "../" + data.com_documento;
});

$('#tabla_comunicado').on('click', '.editar', function () {
    let data = tbl_comunicado.row($(this).parents('tr')).data();
    if (tbl_comunicado.row(this).child.isShown()) {
        data = tbl_comunicado.row(this).data();
    }
    $("#modal_editar").modal('show');
    document.getElementById('txt_id_edit').value = data.comunicado_id;
    document.getElementById('txt_titulo_edit').value = data.com_titulo;
    document.getElementById('txt_desc_edit').value = data.com_descripcion;
    document.getElementById('select_estatus').value = data.com_estado;
    document.getElementById('txt_img_prev_edit').value;
    document.getElementById('txt_documento_edit').value;
});
function AbrirRegistro() {
    $("#modal_registro").modal({ keyborad: false })
    $("#modal_registro").modal('show');
}
/*function Agregar_Documentos(div) {
    let div_container = document.getElementById(div);
    let total_divs = div_container.getElementsByTagName("div");
    let div_requi = "<div class='input-group mb-3'><input type='file' class='form-control file' id='txt_archivo_"+total_divs.length+"'><button class='btn btn-danger mr-2' onclick='Eliminar_Requisto(this);'><i class='fa-solid fa-trash'></i></button></div>";
    $("#" + div).append(div_requi);

}
function Eliminar_Requisto(Input) {
    Input.parentNode.remove();
}
function Guardar_Requisitos(accion) {
    let documentos = [];
    if (accion == "REGISTRAR") {
        $("#div_documentos input").each(function () {
            documentos.push($(this).val());
        });
    } else if (accion == "EDITAR") {
        $("#div_requisito_editar input").each(function () {
            documentos.push($(this).val());
        });
    } else {
        alert("error");
    }
    let documentosJSON = JSON.stringify(requisitos);
    return documentosJSON;
}*/

function Registrar_Comunicados() {
    let titulo = document.getElementById("txt_titulo").value;
    let descripcion = document.getElementById("txt_desc").value;
    let img = document.getElementById("txt_img_prev").value;
    let documento = document.getElementById("txt_documento").value;
    let idarea = document.getElementById("txtprincipalareaid").value;

    if (titulo.length == 0 || descripcion.length == 0) {
        return Swal.fire("Mensaje de Advetencia", "Algunos campos estan vacios", "warning");
    }
    if (documento.length == 0) {
        return Swal.fire("Mensaje de Advetencia", "Seleccione un documento PDF", "warning");
    }
    let extension = documento.split('.').pop();
    let nombrearchivo = "";
    let f = new Date();
    if (documento.length > 0) {
        nombrearchivo = "ARCH" + f.getDate() + "" + (f.getMonth() + 1) + "" + f.getFullYear() + "" + f.getHours() + "" + f.getMilliseconds() + "." + extension;
    }
    let extensionImg = img.split('.').pop();
    let nombrearchivoImg = "";
    let fImg = new Date();
    if (img.length > 0) {
        nombrearchivoImg = "IMG" + fImg.getDate() + "" + (fImg.getMonth() + 1) + "" + fImg.getFullYear() + "" + fImg.getHours() + "" + fImg.getMilliseconds() + "." + extensionImg;
    }
    let formData = new FormData();
    let archivoobj = $("#txt_documento")[0].files[0];
    let archivoobjImg = $("#txt_img_prev")[0].files[0];
    formData.append("titulo", titulo);
    formData.append("descripcion", descripcion);
    formData.append("nombrearchivo", nombrearchivo);
    formData.append("nombrearchivoImg", nombrearchivoImg);
    formData.append("archivoobjImg", archivoobjImg);
    formData.append("archivoobj", archivoobj);
    formData.append("idarea", idarea);
    $.ajax({
        "url": "../controller/comunicado/controller_registrar_comunicado.php",
        type: 'POST',
        data: formData,
        contentType: false,
        processData: false,
        success: function (resp) {
            if (resp.length > 0) {
                Swal.fire({
                    title: 'Enviando...',
                    text: 'Subiendo Archivos al servidor',
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading();
                    }
                }).then((result) => {
                    if (result.dismiss === Swal.DismissReason.timer) {
                        Swal.fire("Mensaje de Confirmación", "El comunicado se registró con éxito", "success");
                        document.getElementById('txt_titulo').value = "";
                        document.getElementById('txt_desc').value = "";
                        document.getElementById('txt_img_prev').value = "";
                        document.getElementById('txt_documento').value = "";
                        tbl_comunicado.ajax.reload();
                        $("#modal_registro").modal('hide');
                    }
                });
            } else {
                Swal.fire("Mensaje de Error", "Comuniquese con soporte informatico", "error");
            }
        }
    });
}

function Modificar_Comunicado() {
    let idcom = document.getElementById("txt_id_edit").value;
    let titulo = document.getElementById("txt_titulo_edit").value;
    let descripcion = document.getElementById("txt_desc_edit").value;
    let img = document.getElementById("txt_img_prev_edit").value;
    let documento = document.getElementById("txt_documento_edit").value;
    let estado = document.getElementById("select_estatus").value;

    if (titulo.length == 0 || descripcion.length == 0) {
        return Swal.fire("Mensaje de Advetencia", "Algunos campos estan vacios", "warning");
    }
    let extension = documento.split('.').pop();
    let nombrearchivo = "";
    let f = new Date();
    if (documento.length > 0) {
        nombrearchivo = "ARCH" + f.getDate() + "" + (f.getMonth() + 1) + "" + f.getFullYear() + "" + f.getHours() + "" + f.getMilliseconds() + "." + extension;
    }
    let extensionImg = img.split('.').pop();
    let nombrearchivoImg = "";
    let fImg = new Date();
    if (img.length > 0) {
        nombrearchivoImg = "IMG" + fImg.getDate() + "" + (fImg.getMonth() + 1) + "" + fImg.getFullYear() + "" + fImg.getHours() + "" + fImg.getMilliseconds() + "." + extensionImg;
    }
    let formData = new FormData();
    let archivoobj = $("#txt_documento_edit")[0].files[0];
    let archivoobjImg = $("#txt_img_prev_edit")[0].files[0];
    formData.append("idcom", idcom);
    formData.append("titulo", titulo);
    formData.append("descripcion", descripcion);
    formData.append("nombrearchivo", nombrearchivo);
    formData.append("nombrearchivoImg", nombrearchivoImg);
    formData.append("archivoobjImg", archivoobjImg);
    formData.append("archivoobj", archivoobj);
    formData.append("estado", estado);

    $.ajax({
        "url": "../controller/comunicado/controller_modificar_comunicado.php",
        type: 'POST',
        data: formData,
        contentType: false,
        processData: false,
        success: function (resp) {
            if (resp.length > 0) {
                Swal.fire({
                    title: 'Publicando...',
                    text: 'Subiendo Archivos al Servidor',
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading();
                    }
                }).then((result) => {
                    if (result.dismiss === Swal.DismissReason.timer) {
                        Swal.fire("Mensaje de Confirmación", "El comunicado se Modifico con éxito", "success");
                        tbl_comunicado.ajax.reload();
                        let img = document.getElementById("txt_img_prev_edit").value = "";
                        let documento = document.getElementById("txt_documento_edit").value = "";
                        $("#modal_editar").modal('hide');
                    }
                });
            } else {
                Swal.fire("Mensaje de Error", "Comuniquese con Soporte Informatico", "error");
            }
        }
    });
}