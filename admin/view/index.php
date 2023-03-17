<?php
session_start();
if (!isset($_SESSION['S_ID'])) {
    header('Location: ../index.php');
}

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta name="generator" content="Hugo 0.87.0" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
    <meta name="description" content="Nifty is a responsive admin dashboard template based on Bootstrap 5 framework. There are a lot of useful components.">
    <title>Sistema Tramite Documentario | MPY</title>

    <link rel="shortcut icon" href="assets/img/default.png" id="icon_pestaña" />
    <!-- STYLESHEETS -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--- -->

    <!-- Fonts [ OPTIONAL ] -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&family=Ubuntu:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS [ REQUIRED ] -->
    <link rel="stylesheet" href="./assets/css/color-schemes/primary-nav/navy/bootstrap.min.css" id="bootstrapcss">

    <!-- Nifty CSS [ REQUIRED ] -->
    <link rel="stylesheet" href="./assets/css/color-schemes/primary-nav/navy/nifty.min.css" id="niftycss">

    <!-- Nifty Demo Icons [ OPTIONAL ] -->
    <link rel="stylesheet" href="./assets/css/demo-purpose/demo-icons.min.css">

    <!-- Demo purpose CSS [ DEMO ] -->
    <link rel="stylesheet" href="./assets/css/demo-purpose/demo-settings.min.css">

    <link rel="stylesheet" href="../public/css/estilos.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap5.min.css">

    <link rel="stylesheet" type="text/css" href="../public/DataTables/datatables.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="../public/css/select2-bootstrap-5-theme.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~---

    [ REQUIRED ]
    You must include this category in your project.
    

    [ OPTIONAL ]
    This is an optional plugin. You may choose to include it in your project.


    [ DEMO ]
    Used for demonstration purposes only. This category should NOT be included in your project.


    [ SAMPLE ]
    Here's a sample script that explains how to initialize plugins and/or components: This category should NOT be included in your project.


    Detailed information and more samples can be found in the documentation.

    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--- -->
</head>

<body class="jumping">
    <input type="text" id="txtprincipalid" value="<?php echo $_SESSION['S_ID']; ?>" hidden>
    <input type="text" id="txtprincipalusu" value="<?php echo $_SESSION['S_USU']; ?>" hidden>
    <input type="text" id="txtprincipalrol" value="<?php echo $_SESSION['S_ROL']; ?>" hidden>
    <input type="text" id="txtprincipalareaid" value="<?php echo $_SESSION['S_IDAREA']; ?>" hidden>
    <input type="text" id="txtprincipalfoto" value="<?php echo $_SESSION['S_FOTOEMPLE']; ?>" hidden>
    <div id="root" class="root mn--max hd--expanded">

        <!-- MAIN CONTENT -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

        <section id="content" class="content">
            <?php include "modules/inicio.php" ?>
        </section>

        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - MAIN CONTENT -->

        <!-- MAIN HEADER-->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <header class="header">
            <div class="header__inner">

                <!-- Brand -->
                <div class="header__brand">
                    <div class="brand-wrap">

                        <!-- Brand logo -->
                        <a href="#" class="brand-img stretched-link">
                            <img src="assets/img/default.png" alt="Nifty Logo" id="logo_header" class="Nifty logo" width="40" height="40">
                        </a>

                        <!-- Brand title -->
                        <div class="brand-title">SIS Tramite</div>

                        <!-- You can also use IMG or SVG instead of a text element. -->

                    </div>
                </div>
                <!-- End - Brand -->

                <div class="header__content">

                    <!-- Content Header - Left Side: -->
                    <div class="header__content-start">

                        <!-- Navigation Toggler -->
                        <button type="button" class="nav-toggler header__btn btn btn-icon btn-sm" aria-label="Nav Toggler">
                            <i class="demo-psi-view-list"></i>
                        </button>
                        <div class="header-searchbox">
                            <h2 class="h5 m-0 header__btn "><?php echo $_SESSION['S_AREA']; ?></h2>

                        </div>

                    </div>
                    <!-- End - Content Header - Left Side -->

                    <!-- Content Header - Right Side: -->
                    <div class="header__content-end">


                        <!-- User dropdown -->
                        <div class="dropdown">

                            <!-- Toggler -->
                            <button class="header__btn btn btn-icon btn-sm" type="button" data-bs-toggle="dropdown" aria-label="User dropdown" aria-expanded="false">
                                <i class="demo-psi-male"></i>
                            </button>

                            <!-- User dropdown menu -->
                            <div class="dropdown-menu dropdown-menu-end w-md-250px">

                                <!-- User dropdown header -->
                                <div class="d-flex align-items-center border-bottom px-3 py-2">

                                    <div class="flex-grow-1 ms-0">
                                        <h5 class="mb-0 fs-6">
                                            <?php echo $_SESSION['S_NOMBRES'];  ?>
                                        </h5>
                                        <span class="text-muted fst-italic"><?php echo $_SESSION['S_ROL'];  ?></span>
                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col">

                                        <!-- User menu link -->
                                        <div class="list-group list-group-borderless h-100 py-3">

                                            <a href="#" onclick="cargar_modal_perfil()" class="list-group-item list-group-item-action">
                                                <i class="demo-pli-male fs-5 me-2"></i> Mi Perfil
                                            </a>

                                            <a href="../controller/usuario/controller_cerrar_sesion.php" class="list-group-item list-group-item-action">
                                                <i class="demo-pli-unlock fs-5 me-2"></i> Salir
                                            </a>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- End - User dropdown -->
                        <button class="sidebar-toggler header__btn btn btn-icon btn-sm" type="button" aria-label="Sidebar button">
                            <i class="demo-psi-dot-vertical"></i>
                        </button>


                    </div>
                </div>
            </div>
        </header>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - MAIN HEADER -->

        <!-- MAIN NAVIGATION -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <nav id="mainnav-container" class="mainnav">
            <div class="mainnav__inner">

                <!-- Navigation menu -->
                <div class="mainnav__top-content scrollable-content pb-5">

                    <!-- Profile Widget -->
                    <div class="mainnav__profile mt-3 d-flex3">

                        <div class="mt-2 d-mn-max"></div>

                        <!-- Profile picture  -->
                        <div class="mininav-toggle text-center py-2">
                            <img class="mainnav__avatar img-md rounded-circle border" src="../controller/empleado/foto/default.png" alt="Profile Picture" id="img_nav_perfil" width="160">
                        </div>

                        <div class="mininav-content collapse d-mn-max">
                            <div class="d-grid">

                                <!-- User name and position -->
                                <div class="d-block text-center shadow-none p-2">
                                    <span class=" d-flex justify-content-center align-items-center">
                                        <h6 class="mb-0 me-3"><?php echo $_SESSION['S_NOMBRES']; ?></h6>
                                    </span>
                                    <small class="text-muted"><?php echo $_SESSION['S_ROL']; ?></small>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- End - Profile widget -->

                    <!-- Navigation Category -->
                    <div class="mainnav__categoriy py-3">
                        <h6 class="mainnav__caption mt-0 px-3 fw-bold">Opciones de Navegacion</h6>
                        <ul class="mainnav__menu nav flex-column">
                            <!-- Regular menu link -->
                            <?php if ($_SESSION['S_ROL'] == 'Administrador') { ?>
                                <li class="nav-item ">
                                    <a onclick="cargar_contenido('content','modules/inicio.php')" class="nav-link active mininav-toggle"><i class="bi bi-house-door fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Inicio</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/tramite/tramite.php')" class="nav-link mininav-toggle"><i class="bi bi-archive fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Tramite</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/usuario/usuario.php')" class="nav-link mininav-toggle"><i class="bi bi-people fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Usuario</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/area/area.php')" class="nav-link mininav-toggle"><i class="bi bi-grid-1x2 fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Area</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/documento/tipo_documento.php')" class="nav-link mininav-toggle"><i class="bi bi-file-earmark-text fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Tipo documento</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/empleado/empleado.php')" class="nav-link mininav-toggle"><i class="bi bi-person-workspace fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Empleado</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/tupa/tupa.php')" class="nav-link mininav-toggle"><i class="bi bi-journal-bookmark fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">TUPA</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/horario/horario.php')" class="nav-link mininav-toggle"><i class="bi bi-alarm fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Horario</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/entidad/entidad.php')" class="nav-link mininav-toggle"><i class="bi bi-bank fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Entidad</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/comunicados/comunicados.php')" class="nav-link mininav-toggle"><i class="bi bi-megaphone fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Comunicados</span>
                                    </a>
                                </li>
                                <!-- END : Regular menu link -->
                            <?php } ?>
                            <?php if ($_SESSION['S_ROL'] == 'Secretario(a)') { ?>
                                <li class="nav-item ">
                                    <a onclick="cargar_contenido('content','modules/inicio.php')" class="nav-link active mininav-toggle"><i class="bi bi-house-door fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Inicio</span>
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a href="javascript:cargar_contenido('content','modules/tramite_area/tramite_registro_otros.php')" class="nav-link  mininav-toggle"><i class="bi bi-clipboard2-check fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Registrar Tramite</span>
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a href="javascript:cargar_contenido('content','modules/tramite_area/tramites_recibidos.php')" class="nav-link  mininav-toggle"><i class="bi bi-pc-display-horizontal fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Tramites Recibidos</span>
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a href="javascript:cargar_contenido('content','modules/tramite_area/tramites_enviados.php')" class="nav-link e mininav-toggle"><i class="bi bi-file-earmark-medical fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Tramites Enviados</span>
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a href="javascript:cargar_contenido('content','modules/tramite_area/seguimiento_interno.php')" class="nav-link e mininav-toggle"><i class="bi bi-search fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Buscar</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a onclick="cargar_contenido('content','modules/comunicados/comunicados.php')" class="nav-link mininav-toggle"><i class="bi bi-megaphone fs-5 me-2"></i>

                                        <span class="nav-label mininav-content ms-1">Comunicados</span>
                                    </a>
                                </li>

                                <!-- END : Regular menu link -->
                            <?php } ?>
                        </ul>
                    </div>
                    <!-- END : Navigation Category -->
                </div>
                <!-- End - Navigation menu -->
            </div>
        </nav>
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- END - MAIN NAVIGATION -->
        <aside class="sidebar">
            <div class="sidebar__inner scrollable-content">

                <!-- This element is only visible when sidebar Stick mode is active. -->
                <div class="sidebar__stuck align-item-center mb-3 px-4">
                    <p class="m-0 text-danger">Close the sidebar =&gt;</p>
                    <button type="button" class="sidebar-toggler btn-close btn-lg rounded-circle ms-auto" aria-label="Close"></button>
                </div>

                <!-- Sidebar tabs nav -->
                <div class="sidebar__wrap">
                    <nav class="px-3">
                        <div class="nav nav-callout nav-fill flex-nowrap" id="nav-tab" role="tablist">
                            <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#nav-settings" type="button" role="tab" aria-controls="nav-settings" aria-selected="false">
                                <i class="d-block demo-pli-wrench fs-3 mb-2"></i>
                                <span>Ajustes</span>
                            </button>
                        </div>
                    </nav>
                </div>
                <!-- End - Sidebar tabs nav -->

                <!-- Sideabar tabs content -->
                <div class="tab-content sidebar__wrap" id="nav-tabContent">
                    <!-- Settings content -->
                    <div id="nav-settings" class="tab-pane fade py-4 show active" role="tabpanel" aria-labelledby="nav-settings-tab">
                        <!-- Account settings -->
                        <h5 class="px-3">Ajustes de Tema</h5>
                        <!-- End - Account settings -->
                        <div class="row list-group list-group-borderless ">
                            <div class="col-lg-12 list-group-item mb-1">

                                <div class="d-flex align-items-start position-relative">
                                    <div class="flex-shrink-0 me-3">
                                        <div class="_dm-color-box bg-primary"></div>
                                    </div>
                                    <div class="flex-grow-1 ">
                                        <a href="#" data-dir="dark" onclick="llamar_check('Tema Original')" data-hd="expanded" class="_dm-themeColors schemes-btn h6 d-block mb-0 stretched-link text-decoration-none">Tema
                                            Original</a>
                                        <small class="text-muted">Tema del sistema por defecto.</small>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-12  list-group-item mb-1">

                                <div class="d-flex align-items-start position-relative">
                                    <div class="flex-shrink-0 me-3">
                                        <div class="_dm-color-box bg-light"></div>
                                    </div>
                                    <div class="flex-grow-1 ">
                                        <a href="#" onclick="llamar_check('Tema Claro')" id="txt_tema" data-dir="light" data-single="true" class="_dm-themeColors schemes-btn h6 d-block mb-0 stretched-link text-decoration-none">Tema
                                            Claro</a>
                                        <small class="text-muted">Tema del sistema Claro.</small>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-12 list-group-item mb-1">

                                <div class="d-flex align-items-start position-relative">
                                    <div class="flex-shrink-0 me-3">
                                        <div class="_dm-color-box bg-dark"></div>
                                    </div>
                                    <div class="flex-grow-1 ">
                                        <a href="#" onclick="llamar_check('Tema Oscuro')" data-dir="dark" data-hd="expanded" class="_dm-themeColors schemes-btn h6 d-block mb-0 stretched-link text-decoration-none">Tema
                                            Oscuro</a>
                                        <small class="text-muted">Tema del sistema Oscuro.</small>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                    <!-- End - Settings content -->

                </div>
                <!-- End - Sidebar tabs content -->

            </div>
        </aside>


    </div>


    <!-- Modal -->
    <div class="modal fade" id="modal_pefil" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Mi Perfil</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-9 mb-3 text-center">
                            <label for=""></label>

                            <div class="input-group justify-content-center ">
                                <div class="">
                                    <img src="../controller/empleado/foto/prueba.jpg" id="img_perfil" class="img-fluid" alt="" width="160">
                                </div>
                                <input type="file" class="form-control-file d-none" id="inputFile">
                                <button type="button" class="btn btn-icon" onclick="document.getElementById('inputFile').click();">
                                    <i class="fa-solid fa-pencil-alt"></i>
                                </button>
                            </div>


                        </div>
                        <div class="col-lg-9">
                            <label for="">Usuario (*)</label>
                            <input type="text" class="form-control" id="txt_usu_p" oninput="this.value = this.value.toUpperCase()" autocomplete="off">
                        </div>

                        <div class="col-lg-9 text-end ">
                            <button class="btn btn-transparent p-1 text-danger " onclick="mostar_container_p()"><i class="fa-solid fa-eye fs-5 me-2"></i>Cambiar Contraseña </button>
                        </div>
                        <div class="col-lg-9 " id="div_password_modify" style="display: none;">
                            <div class="row">
                                <div class="col-lg-12 mb-3">
                                    <label for="">Contraseña Actual (*)</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="txt_contra_a">
                                        <button type="button" class="btn btn-light" onclick="mostrarPassword('txt_contra_a')">
                                            <i class="fa-solid fa-eye-slash icon"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-12 mb-3">
                                    <label for="">Contraseña Nueva (*)</label>
                                    <div class="input-group">
                                        <input type="password" class="form-control" id="txt_contra_n">
                                        <button type="button" class="btn btn-light" onclick="mostrarPassword('txt_contra_n')">
                                            <i class="fa-solid fa-eye-slash icon"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="text" id="text_pass_hash" hidden>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Cerrar</button>
                    <button type="button" class="btn btn-outline-secondary" onclick="Modificar_Perfil()">Modificar</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $('.mininav-toggle.nav-link').click(function() {
            $('.mininav-toggle.nav-link').removeClass('active');
            $('.mininav-toggle.nav-link').addClass('collapsed');
            $('.mininav-content').removeClass('show');
            $(this).addClass('active');
        });
        $('.mininav-content li a').click(function() {
            $('.mininav-toggle.active').addClass('active');
            $('.mininav-content li a').removeClass('active');
            $(this).addClass('active');
        });

        function cargar_contenido(id, vista) {
            $('#' + id).load(vista);
        }
        var idioma_espanol = {
            select: {
                rows: "%d fila seleccionada"
            },
            "sProcessing": "Procesando...",
            "sLengthMenu": "Mostrar _MENU_ registros",
            "sZeroRecords": "No se encontraron resultados",
            "sEmptyTable": "Ning&uacute;n dato disponible en esta tabla",
            "sInfo": "Registros del (_START_ al _END_) total de _TOTAL_ registros",
            "sInfoEmpty": "Registros del (0 al 0) total de 0 registros",
            "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix": "",
            "sSearch": "Buscar:",
            "sUrl": "",
            "sInfoThousands": ",",
            "sLoadingRecords": "<b>No se encontraron datos</b>",
            "oPaginate": {
                "sFirst": "Primero",
                "sLast": "Último",
                "sNext": "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        }
        $(document).ready(function() {



            mostrar_datos_emmpresa_interior();
            cargar_comunicado();
            llamar_tema();


        });
        if (localStorage.cssB) {
            document.getElementById('bootstrapcss').href = localStorage.cssB;
            document.getElementById('niftycss').href = localStorage.cssN;
        }



        function sololetras(e) {
            key = e.keyCode || e.which;

            teclado = String.fromCharCode(key).toLowerCase();

            letras = "qwertyuiopasdfghjklñzxcvbnm ";

            especiales = "8-37-38-46-164";

            teclado_especial = false;

            for (var i in especiales) {
                if (key == especiales[i]) {
                    teclado_especial = true;
                    break;
                }
            }

            if (letras.indexOf(teclado) == -1 && !teclado_especial) {
                return false;
            }
        }

        function soloNumeros(e) {
            tecla = (document.all) ? e.keyCode : e.which;
            if (tecla == 8) {
                return true;
            }
            // Patron de entrada, en este caso solo acepta numeros
            patron = /[0-9]/;
            tecla_final = String.fromCharCode(tecla);
            return patron.test(tecla_final);
        }
        $('input[type="file"]').on('change', function() {
            var ext = $(this).val().split('.').pop();
            if ($(this).val() != '') {
                if (ext == "JPG" || ext == "jpg" || ext == "PNG" || ext == "png") {
                    if ($(this)[0].files[0].size > 8048576) {
                        Swal.fire("El archivo selecionado es demasiado pesado",
                            "<label style='color:#9B0000;'>seleccionar un archivo mas liviano</label>",
                            "warning");
                        //$("#txtformato").val("");
                        //$("#txt_archivo").val("");
                        //$("#lb_archivo").html("Seleccionar Archivo");
                        //return;
                        //$("#btn_subir").prop("disabled",true);
                    } else {
                        //$("#btn_subir").attr("disabled",false);

                    }
                    $("#txtformato").val(ext);
                } else {
                    $("#txt_archivo").val("");
                    Swal.fire("Mensaje de Error", "Extensión no permitida: " + ext, "error");
                }
            }
        });
    </script>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- JAVASCRIPTS -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <script src="https://kit.fontawesome.com/bd7b24f1e0.js" crossorigin="anonymous"></script>
    <!-- Popper JS [ OPTIONAL ] -->
    <script src="./assets/vendors/popperjs/popper.min.js" defer></script>

    <!-- Bootstrap JS [ OPTIONAL ] -->
    <script src="./assets/vendors/bootstrap/bootstrap.min.js" defer></script>
    <!-- Nifty JS [ OPTIONAL ] -->
    <script src="./assets/js/nifty.js" defer></script>

    <!-- Nifty Settings [ DEMO ] -->
    <script src="./assets/js/demo-purpose-only.js" defer></script>

    <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript" src="../public/DataTables/datatables.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="../public/js/perfil.js?rev=<?php echo time(); ?>"></script>
    <script src="../public/js/entidad.js?rev=<?php echo time(); ?>"></script>
    <script src="../public/js/inicio.js?rev=<?php echo time(); ?>"></script>


</body>

</html>