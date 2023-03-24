<?php
    require "../../model/model_comunicado.php";
    $MU = new Modelo_Comunicado();//Instaciamos

    $titulo =strtoupper(htmlspecialchars($_POST['titulo'],ENT_QUOTES,'UTF-8'));
    $descripcion =strtoupper(htmlspecialchars($_POST['descripcion'],ENT_QUOTES,'UTF-8'));
    $nombrearchivo =strtoupper(htmlspecialchars($_POST['nombrearchivo'],ENT_QUOTES,'UTF-8'));
    $nombrearchivoImg =strtoupper(htmlspecialchars($_POST['nombrearchivoImg'],ENT_QUOTES,'UTF-8'));
    $idarea =strtoupper(htmlspecialchars($_POST['idarea'],ENT_QUOTES,'UTF-8'));

    $ruta = 'controller/comunicado/docs/'.$nombrearchivo;
    $rutaImg = 'controller/comunicado/img/'.$nombrearchivoImg;

    $consulta = $MU->Registrar_Comunicado($titulo,$descripcion,$rutaImg,$ruta,$idarea);
    echo $consulta;
    if($consulta){
        if(move_uploaded_file($_FILES['archivoobj']['tmp_name'],"docs/".$nombrearchivo));
        if(move_uploaded_file($_FILES['archivoobjImg']['tmp_name'],"img/".$nombrearchivoImg));
    }

?>