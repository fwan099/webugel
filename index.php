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

    }

}else{
    require "view/modules/inicio.php";
}
include "view/layouts/view_footer.php";
?>