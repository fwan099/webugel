<?php
include "view/layouts/view_header.php";
if(isset($_GET["url"])){
   switch ($_GET["url"]){
        case "inicio":    
            include "view/modules/".$_GET["url"].".php";
            break;
        case "nosotros":
            include "view/modules/institucional/".$_GET["url"].".php";
            break;
        case "directorio":
            include "view/modules/institucional/".$_GET["url"].".php";
            break;
        case "documentosdegestion":
            include "view/modules/institucional/".$_GET["url"].".php";
            break;
        case "organigrama":
            include "view/modules/institucional/".$_GET["url"].".php";
            break;
        case "administracion":
            include "view/modules/administracion/".$_GET["url"].".php";
            break;
        case "gestionInstitucional":
            include "view/modules/gestionInstitucional/".$_GET["url"].".php";
            break;
        case "gestionPedagogica":
            include "view/modules/gestionPedagogica/".$_GET["url"].".php";
            break;
        case "asesoriaJuridica":
            include "view/modules/asesoriaJuridica/".$_GET["url"].".php";
            break;
        case "convocatorias":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "convocatoriasCas":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "convocatoriasDocente":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "convocatoriasAuxiliar":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "convocatoriasDirectivos":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "convocatoriasCap":
            include "view/modules/convocatorias/".$_GET["url"].".php";
            break;
        case "comunicados":
            include "view/modules/comunicados/".$_GET["url"].".php";
            break;
        case "oficiosMultiples":
            include "view/modules/oficios/".$_GET["url"].".php";
            break;
        case "servicios":
            include "view/modules/servicios/".$_GET["url"].".php";
            break;
        case "documento":
            include "view/modules/documento/".$_GET["url"].".php";
            break;
        case "admin":
            header('Location: admin/index.php');
            break;
        default:
            include "view/modules/error/404.php";
            break;



    }

}else{
    require "view/modules/inicio.php";
}
include "view/layouts/view_footer.php";
?>