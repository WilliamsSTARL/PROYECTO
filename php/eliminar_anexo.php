<?php
include '../conexion.php';

if ($conexion === null) {
    echo 'error en la conexión a la base de datos';
    exit;
}

$id_alumno = $_POST['id_alumno'];
$anexo = $_POST['anexo'];

$tablas = [
    "1" => "legajo_alumno",
    "2" => "ficha_inscripcion",
    "3" => "legajo_alumno",
    "4" => "autorizacion_imagen"
];

$tabla_a_eliminar = $tablas[$anexo];
$columna_estado = "anexo_" . $anexo;

$sql = "DELETE FROM $tabla_a_eliminar WHERE id = $id_alumno";

if ($conexion->query($sql) === TRUE) {
    $sql_update_estado = "UPDATE estado_anexo SET $columna_estado = 'no' WHERE fk_alumno = $id_alumno";
    if ($conexion->query($sql_update_estado) === TRUE) {
        echo 'success';
    } else {
        echo 'error al actualizar estado del anexo';
    }
} else {
    echo 'error al eliminar anexo';
}
?>