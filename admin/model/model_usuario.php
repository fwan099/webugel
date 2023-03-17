<?php
require_once "model_conexion.php";
class Modelo_Usuario extends ConexionDB{
    public function Verificar_Usuario($usu,$con){
        $conexion = ConexionDB::conexionPDO();
            $sql = "CALL SP_VERIFICAR_USUARIO(?)";
            $arreglo = array();
            $query = $conexion->prepare($sql);
            $query->bindParam(1,$usu);
            $query->execute();
            $resultado = $query->fetchAll();
            foreach($resultado as $resp){
                if(password_verify($con,$resp['usu_contra'])){
                    $arreglo[] = $resp;
                }     
            }
            return $arreglo;
            ConexionDB::cerrar_conexion();
    }
}

?>