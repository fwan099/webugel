<script src="../public/js/directorio.js?rev=<?php echo time(); ?>"></script>
<div class="content__boxed">
    <div class="content__wrap">
        <nav aria-label="breadcrumb" class="pb-2">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item">Portal Web UGEL Yunguyo</li>
                <li class="breadcrumb-item">Directorio</li>
            </ol>
        </nav>
        <!-- Table with toolbar -->
        <div class="card">
            <div class="card-header ">
                <h5 class="card-title mb-3">PANEL ADMINISTRATIVO DE DIRECTORIO</h5>
                <div class="row ">

                    <!-- Left toolbar -->
                    <div class="col-md-6 d-flex gap-1 align-items-center">
                        <button type="button" onclick="AbrirRegistro()"
                            class="btn btn-primary hstack gap-2 align-self-center">
                            <i class="demo-psi-add fs-5"></i>
                            <span class="vr"></span>
                            Nuevo Registro
                        </button>

                    </div>
                    <!-- END : Left toolbar -->

                    <!-- Right Toolbar -->

                </div>
            </div>

            <div class="card-body ">
                <div class="table-responsive">
                    <table id="tabla_directorio" class="display " style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Foto</th>
                                <th>Empleado</th>
                                <th>Profesion</th>
                                <th>Area</th>
                                <th>Cargo</th>
                                <th>Accion</th>
                            </tr>
                        </thead>

                    </table>
                </div>

            </div>
        </div>
        <!-- END : Table with toolbar -->

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modal_registro" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">REGISTRO DE DIRECTORIO</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-6 mb-3">
                        <label for="">Cargo (*)</label>
                        <input type="text" class="form-control" id="txt_area">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="">Area (*)</label>
                        <select class="js-example-basic-single" id="select_area" style="width:100%">
                        </select>
                    </div>
                    <div class="col-lg-12 mb-3">
                        <label for="">Empleado (*)</label>
                        <select class="js-example-basic-single" id="select_empleado" style="width:100%">
                        </select>
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="">Profesion (*)</label>
                        <input type="text" class="form-control" id="txt_area">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="">Orden (*)</label>
                        <input type="text" class="form-control" id="txt_area">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-outline-secondary" onclick="Registrar_Area()">Registrar</button>
            </div>
        </div>
    </div>
</div>


<script>

    $(document).ready(function() {
        listar_directorio();
        // $('.js-example-basic-single').select2({dropdownParent: $('#modal_registro')});
        Cargar_Select_Empleado();
        Cargar_Select_Area();

    });
    $('#modal_registro').on('shown.bs.modal', function(event) {

        $('.js-example-basic-single').select2({
            dropdownParent: '#modal_registro',
            theme: "bootstrap-5",
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
            placeholder: 'SELECCIONAR ',
        });

    })
    $('#modal_editar').on('shown.bs.modal', function(event) {

        $('.js-example-basic-single').select2({
            dropdownParent: '#modal_editar',
            theme: "bootstrap-5",
            width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
            placeholder: $(this).data('placeholder'),
        });
    })
</script>