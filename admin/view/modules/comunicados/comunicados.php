<script src="../public/js/comunicados.js?rev=<?php echo time(); ?>"></script>
<div class="content__boxed">
    <div class="content__wrap">
        <nav aria-label="breadcrumb" class="pb-2">
            <ol class="breadcrumb mb-0">
                <li class="breadcrumb-item">Portal Web UGEL Yunguyo</li>
                <li class="breadcrumb-item">Area</li>
            </ol>
        </nav>
        <!-- Table with toolbar -->
        <div class="card">
            <div class="card-header ">
                <h5 class="card-title mb-3">PANEL ADMINISTRATIVO DE COMUNICADOS</h5>
                <div class="row ">

                    <!-- Left toolbar -->
                    <div class="col-md-6 d-flex gap-1 align-items-center">
                        <button type="button" onclick="AbrirRegistro()" class="btn btn-primary hstack gap-2 align-self-center">
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
                    <table id="tabla_comunicado" class="display " style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Titulo</th>
                                <th>Mas Datos</th>
                                <th>Fecha Creacion</th>
                                <th>Estatus</th>
                                <th style="min-width:90px">Accion</th>
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
                <h5 class="modal-title" id="exampleModalLabel">REGISTRO DE AREA</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-12 mb-3">
                        <label for="">Titulo (*)</label>
                        <input type="text" class="form-control" id="txt_titulo">
                    </div>
                    <div class="col-lg-12 mb-3">
                        <label for="">Descripción (*)</label>
                        <textarea id="txt_desc_mas" rows="3" class="form-control" style="resize:none;"></textarea>
                    </div>
                    <div class="col-lg-12 mb-3">
                        <label for="">Cargar Documento (*)</label>
                        <input type="file" class="form-control" id="txt_archivo">
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

<!-- Modal -->
<div class="modal fade" id="modal_mas" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="lbl_titulo_datos">MAS DATOS DEL COMUNICADO</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12 mb-3">
                        <!-- Callout tabs with base -->
                        <div class="tab-base">
                            <!-- Nav tabs -->
                            <ul class="nav nav-callout" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#_dm-coTabsBaseHome" type="button" role="tab" aria-controls="home" aria-selected="true">Informacion</button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" data-bs-toggle="tab" data-bs-target="#_dm-coTabsBaseProfile2" type="button" role="tab" aria-controls="profile" aria-selected="false">Dodumento Principal</button>
                                </li>
                            </ul>
                            <!-- Tabs content -->
                            <div class="tab-content">
                                <div id="_dm-coTabsBaseHome" class="tab-pane fade active show" role="tabpanel" aria-labelledby="home-tab">
                                    <div class="row">
                                        <div class="col-lg-6 mb-3">
                                            <label for="">Area Procedencia (*)</label>
                                            <input type="text" class="form-control" id="txt_area_mas" readonly>
                                            <input type="text" class="form-control" id="txt_idcom_mas" hidden readonly>
                                        </div>
                                        <div class="col-lg-3 mb-3">
                                            <label for="">Fecha Creación (*)</label>
                                            <input type="text" class="form-control" id="txt_fecha_mas" readonly>
                                        </div>
                                        <div class="col-lg-3 mb-3">
                                            <label for="">Estado (*)</label>
                                            <input type="text" class="form-control" id="txt_estado_mas" readonly>
                                        </div>
                                        <div class="col-lg-12 mb-3">
                                            <label for="">Titulo (*)</label>
                                            <input type="text" class="form-control" id="txt_titulo_mas" readonly>
                                        </div>
                                        <div class="col-lg-12 mb-3">
                                            <label for="">Descripción (*)</label>
                                            <textarea id="txt_desc_mas" rows="3" class="form-control" style="resize:none;" readonly></textarea>
                                        </div>
                                        <div class="col-lg-12 mb-3 d-flex flex-column">
                                            <label for="">Vista Previa (*)</label>
                                            <img src="" alt="" id="img_prev_mas" style="width: 160px; height: 160px;" class="align-self-center rounded rounded-2 border border-2 border-dark">
                                        </div>
                                    </div>
                                </div>
                                <div id="_dm-coTabsBaseProfile2" class="tab-pane fade" role="tabpanel" aria-labelledby="profile-tab">
                                    <div class="row">
                                        <iframe id="fraViewDocumentsPDFViewer" src="../public/pdfjs/web/viewer.html?file=../../../controller/comunicado/docs/c3.pdf" width="100%" height="460px"></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END : Callout tabs with base -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->



<script>
    $(document).ready(function() {
        listar_comunicado();


    });


    var myModal = document.getElementById('modal_registro');
    var myInput = document.getElementById('txt_titulo');

    myModal.addEventListener('shown.bs.modal', function() {
        myInput.focus()
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