function AbrirRegistro() {
    $("#modal_registro").modal({ backdrop: 'static', keyborad: false })
    $("#modal_registro").modal('show');
}

var tbl_directorio;
function listar_directorio() {
    tbl_directorio = $("#tabla_directorio").DataTable({
        "ordering": false,
        "bLengthChange": true,
        "searching": { "regex": false },
        "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
        "pageLength": 10,
        "destroy": true,
        "async": true,
        "processing": true,
        "ajax": {
            "url": "../controller/directorio/controller_listar_directorio.php",
            type: 'POST'
        },
        "columns": [
            { "defaultContent": "" },
            {
                "data": "emple_fotoperfil", render: function (data, type, row) {
                    if (data == null) {
                        return '<img src="../controller/empleado/foto/default.png" class="img-fluid rounded-circle" alt="..." width="40">';
                    } else {
                        return '<img src="../' + data + '" class="img-fluid rounded-circle" alt="..." width="40">';
                    }

                }
            },
            { "data": "namecomplet" },
            { "data": "dir_profesion" },
            { "data": "area_nombre" },
            { "data": "dir_cargo" },
            { "defaultContent": "<button class=' editar btn btn-secondary btn-sm'><i class='fas fa-pencil-alt'></i></button>&nbsp<button class=' eliminar btn btn-danger btn-sm'><i class='fa-solid fa-trash'></i></button>" },
        ],

        "language": idioma_espanol,
        select: true
    });
    tbl_directorio.on('draw.td', function () {
        var PageInfo = $("#tabla_directorio").DataTable().page.info();
        tbl_directorio.column(0, { page: 'current' }).nodes().each(function (cell, i) {
            cell.innerHTML = i + 1 + PageInfo.start;
        });
    });

}

function Cargar_Select_Empleado() {
    $.ajax({
        "url": "../controller/usuario/controller_cargar_select_empleado.php",
        type: 'POST',
    }).done(function (resp) {
        let data = JSON.parse(resp);
        if (data.length > 0) {
            let cadena = "<option value=''></option>";
            for (let i = 0; i < data.length; i++) {
                cadena += " <option value='" + data[i][0] + "'>" + data[i][1] + "</option>";
            }
            document.getElementById('select_empleado').innerHTML = cadena;
            //document.getElementById('select_empleado_editar').innerHTML = cadena;
        } else {
            cadena += " <option value=''>No hay empleados disponibles</option>";
            document.getElementById('select_empleado').innerHTML = cadena;
            //document.getElementById('select_empleado_editar').innerHTML = cadena;
        }
    });
}

function Cargar_Select_Area() {
    $.ajax({
        "url": "../controller/usuario/controller_cargar_select_area.php",
        type: 'POST',
    }).done(function (resp) {
        let data = JSON.parse(resp);
        if (data.length > 0) {
            let cadena = "<option value=''></option>";
            for (let i = 0; i < data.length; i++) {
                cadena += " <option value='" + data[i][0] + "'>" + data[i][1] + "</option>";
            }
            document.getElementById('select_area').innerHTML = cadena;
           // document.getElementById('select_area_editar').innerHTML = cadena;
        } else {
            cadena += " <option value=''>No hay empleados disponibles</option>";
            document.getElementById('select_area').innerHTML = cadena;
            //document.getElementById('select_area_editar').innerHTML = cadena;
        }
    });
}