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
    document.getElementById('img_prev_mas').src ="../"+ data.com_imgprev;
});

function AbrirRegistro() {
    $("#modal_registro").modal({  keyborad: false })
    $("#modal_registro").modal('show');
}