<?php
    require "../../model/model_empleado.php";
    $MU = new Modelo_Empleado();//Instaciamos
    $id =strtoupper(htmlspecialchars($_POST['id'],ENT_QUOTES,'UTF-8'));
    $nro =strtoupper(htmlspecialchars($_POST['nro'],ENT_QUOTES,'UTF-8'));
    $nom =strtoupper(htmlspecialchars($_POST['nom'],ENT_QUOTES,'UTF-8'));
    $apepa =strtoupper(htmlspecialchars($_POST['apepa'],ENT_QUOTES,'UTF-8'));
    $apema =strtoupper(htmlspecialchars($_POST['apema'],ENT_QUOTES,'UTF-8'));
    $fnac =strtoupper(htmlspecialchars($_POST['fnac'],ENT_QUOTES,'UTF-8'));
    $movil =strtoupper(htmlspecialchars($_POST['movil'],ENT_QUOTES,'UTF-8'));
    $dire =strtoupper(htmlspecialchars($_POST['dire'],ENT_QUOTES,'UTF-8'));
    $email =strtoupper(htmlspecialchars($_POST['email'],ENT_QUOTES,'UTF-8'));
    $esta =strtoupper(htmlspecialchars($_POST['esta'],ENT_QUOTES,'UTF-8'));
    $nombrearchivoImg =strtoupper(htmlspecialchars($_POST['nombrearchivoImg'],ENT_QUOTES,'UTF-8'));

    $rutaImg;
    if (empty($nombrearchivoImg)) {
        $rutaImg = "";
    } else {
        $rutaImg = 'controller/empleado/foto/'.$nombrearchivoImg;
    }
    $consulta = $MU->Modificar_Empleado($id,$nro,$nom,$apepa,$apema,$fnac,$movil,$dire,$email,$esta,$rutaImg);
    echo $consulta;
    if($consulta==1){
        if (!empty($nombrearchivoImg)) {
            if (move_uploaded_file($_FILES['archivoobjImg']['tmp_name'], "foto/" . $nombrearchivoImg));
        }
    }

?>