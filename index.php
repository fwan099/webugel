<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <title>UGEL Yunguyo | Portal Web</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="./public/img/icon.png" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/bd3728afdc.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- Libraries Stylesheet -->
    <link href="./template/lib/animate/animate.min.css" rel="stylesheet">
    <link href="./template/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./template/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./template/css/style.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./template/css/app.css" rel="stylesheet">
    

    <link rel="stylesheet" type="text/css" href="./public/DataTables/datatables.min.css" />

</head>

<body>
    <div class="container-fluid bg-white p-0">
        <!-- Spinner Start -->
        <!--<div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Cargando...</span>
            </div>
        </div>-->
        <!-- Spinner End -->

        <!-- Header Start -->
        <header class="header__box d-flex justify-content-center px-2 justify-content-lg-between">
            <ul class="info__box d-lg-flex d-none">
                <li class="item__info"><i class="fa-solid fa-phone me-2"></i>+51987654321</li>
                <li class="item__info"><i class="fa-solid fa-envelope me-2"></i>infougelyunguyo@ugelyunguyo.com</li>
            </ul>

            <ul class="social-box ">
                <li class="social-item"><a href="#" target="_blank"><i class="fa-brands fa-facebook-f"></i></a></li>
                <li class="social-item"><a href="#" target="_blank"><i class="fa-brands fa-twitter"></i></a></li>
                <li class="social-item"><a href="#" target="_blank"><i class="fa-brands fa-whatsapp"></i></a></li>
                <li class="social-item"><a href="#" target="_blank"><i class="fa-brands fa-youtube"></i></a></li>
                <li class="social-item"><a href="#" target="_blank"><i class="fa-brands fa-tiktok"></i></a></li>
                <li class="social-item"><a href="admin"><i class="fas fa-user-cog"></a></i>

            </ul>

        </header>
        <!-- Header End -->



        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
            <a href="./" class="navbar-brand d-flex align-items-center text-center py-0 px-4 px-lg-5 wow fadeInRight">
                <img src="./public/img/logo.png" width="200" alt="" class="img-fluid ">

            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="./" class="nav-item nav-link active wow fadeInDown" data-wow-delay="0.1s">Inicio</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle wow fadeInDown" data-bs-toggle="dropdown" data-wow-delay="0.2s">Institucional</a>
                        <div class="dropdown-menu rounded-0 m-0 p-0">
                            <a href="nosotros" class="dropdown-item">Sobre Nosotros</a>
                            <a href="directorio" class="dropdown-item">Directorio</a>
                            <a href="documentosdegestion" class="dropdown-item">Documentos de Gestión</a>
                            <a href="organigrama" class="dropdown-item">Organigrama</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle wow fadeInDown" data-wow-delay="0.3s" data-bs-toggle="dropdown">Areas</a>
                        <div class="dropdown-menu rounded-0 m-0 p-0">
                            <a href="administracion" class="dropdown-item">Administración</a>
                            <a href="gestionInstitucional" class="dropdown-item">Area de Gestión Institucional</a>
                            <a href="gestionPedagogica" class="dropdown-item">Area de Gestión Pedagogica</a>
                            <a href="asesoriaJuridica" class="dropdown-item">Area de Asesoria Juridica</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle wow fadeInDown" data-wow-delay="0.4s" data-bs-toggle="dropdown">Convocatorias</a>
                        <div class="dropdown-menu rounded-0 m-0 p-0">
                            <a href="convocatoriasCas" class="dropdown-item">Convocatorias CAS</a>
                            <a href="convocatoriasDocente" class="dropdown-item">Convocatorias Docentes</a>
                            <a href="convocatoriasAuxiliar" class="dropdown-item">Convocatorias Auxiliares</a>
                            <a href="convocatoriasDirectivos" class="dropdown-item">Convocatorias Directivos</a>
                            <a href="convocatoriasCap" class="dropdown-item">Convocatorias CAP</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle wow fadeInDown" data-wow-delay="0.5s" data-bs-toggle="dropdown">Informacion</a>
                        <div class="dropdown-menu rounded-0 m-0 p-0">
                            <a href="comunicados" class="dropdown-item">Comunicados</a>
                            <a href="oficiosMultiples" class="dropdown-item">Oficios Multiples</a>
                        </div>
                    </div>
                    <a href="servicios" class="nav-item nav-link wow fadeInDown" data-wow-delay="0.6s">Servicios UGEL</a>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->

        <?php
        if (isset($_GET["url"])) {
            switch ($_GET["url"]) {
                case "inicio":
                    include "view/modules/" . $_GET["url"] . ".php";
                    break;
                case "nosotros":
                    include "view/modules/institucional/" . $_GET["url"] . ".php";
                    break;
                case "directorio":
                    include "view/modules/institucional/" . $_GET["url"] . ".php";
                    break;
                case "documentosdegestion":
                    include "view/modules/institucional/" . $_GET["url"] . ".php";
                    break;
                case "organigrama":
                    include "view/modules/institucional/" . $_GET["url"] . ".php";
                    break;
                case "administracion":
                    include "view/modules/administracion/" . $_GET["url"] . ".php";
                    break;
                case "gestionInstitucional":
                    include "view/modules/gestionInstitucional/" . $_GET["url"] . ".php";
                    break;
                case "gestionPedagogica":
                    include "view/modules/gestionPedagogica/" . $_GET["url"] . ".php";
                    break;
                case "asesoriaJuridica":
                    include "view/modules/asesoriaJuridica/" . $_GET["url"] . ".php";
                    break;
                case "convocatorias":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "convocatoriasCas":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "convocatoriasDocente":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "convocatoriasAuxiliar":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "convocatoriasDirectivos":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "convocatoriasCap":
                    include "view/modules/convocatorias/" . $_GET["url"] . ".php";
                    break;
                case "comunicados":
                    include "view/modules/comunicados/" . $_GET["url"] . ".php";
                    break;
                case "oficiosMultiples":
                    include "view/modules/oficios/" . $_GET["url"] . ".php";
                    break;
                case "servicios":
                    include "view/modules/servicios/" . $_GET["url"] . ".php";
                    break;
                case "documento":
                    include "view/modules/documento/" . $_GET["url"] . ".php";
                    break;
                case "documentoOficio":
                    include "view/modules/documento/" . $_GET["url"] . ".php";
                    break;
                case "admin":
                    header('Location: admin/index.php');
                    break;
                default:
                    include "view/modules/error/404.php";
                    break;
            }
        } else {
            require "view/modules/inicio.php";
        }


        ?>
<!-- Footer Start -->
<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Institucional</h5>
                <a class="btn btn-link text-white-50" href="nosotros">Sobre Nosotros</a>
                <a class="btn btn-link text-white-50" href="directorio">Directorio Institucional</a>
                <a class="btn btn-link text-white-50" href="documentosdegestion">Documentos de Gestion</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Enlaces Rapidos</h5>
                <a class="btn btn-link text-white-50" href="convocatorias">Convocatorias</a>
                <a class="btn btn-link text-white-50" href="comunicados">Comunicados</a>
                <a class="btn btn-link text-white-50" href="oficiosMultiples">Oficios Multiples</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h5 class="text-white mb-4">Contactenos</h5>
                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Jr. Independencia N° 1034, Yunguyo</p>
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+51987654321</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>infougelyunguyo@ugelyunguyo.com</p>
                
            </div>
            <div class="col-lg-3 col-md-6 d-flex justify-content-center align-items-center"> 
                <a href="#" id="libro"><img src="./public/img/icons/libro.png" class="libro__re" alt="" width="160"></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright d-flex justify-content-center">
            <div class="row justify-content-center">
                <span>Copyright <i class="fa-regular fa-copyright w-auto"></i> 2023<a href="./"> Unidad de Gestión Educativa Local Yunguyo</a></span>
            </div>
        </div>
    </div>
</div>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>
<script >
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
</script>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="./template/lib/wow/wow.min.js"></script>
<script src="./template/lib/easing/easing.min.js"></script>
<script src="./template/lib/waypoints/waypoints.min.js"></script>
<script src="./template/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="./template/js/main.js"></script>

<script type="text/javascript" src="./public/DataTables/datatables.min.js"></script>

<!-- Librerias  -->
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>

<script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>

<script src="./public/js/app.js"></script>

</body>

</html>