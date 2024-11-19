<?php
$conexion = mysqli_connect("localhost", "root", "", "eesn7");

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}
?>
