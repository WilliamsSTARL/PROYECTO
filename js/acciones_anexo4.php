<?php
include 'conexion.php';  

if (isset($_GET['alumno_id'])) {
    $alumno_id = $_GET['alumno_id'];
    $query = "SELECT `id`, `apellido`, `nombre`, `dni`, `domicilio`, `localidad`, `foto`, `telefono`, `email`, `tutor`, `curso`, `observaciones`, `ficha_inscripcion`, `dni_alumno`, `cuil_alumno`, `certificado_nacimiento`, `ficha_salud`, `vacunas`, `certificado_salud`, `certificado_oftalmologico`, `dni_tutor`, `certificado_aprobacion`, `otros`, `Fecha_nacimiento`, `Lugar`, `Division`, `Odontologico`, `PASE`, `AImagen` FROM `legajo_alumno` WHERE `id` = ?";
    if ($stmt = $conexion->prepare($query)) {
        $stmt->bind_param("i", $alumno_id);
        $stmt->execute();
        $result = $stmt->get_result();
        if ($result->num_rows > 0) {
            $data = $result->fetch_assoc();
            echo json_encode($data);
        } else {
            echo json_encode(array("error" => "No se encontró el alumno con el ID especificado. Verifique que el ID sea correcto."));
        }
        $stmt->close();
    } else {
        echo json_encode(array("error" => "Error al preparar la consulta: " . $conexion->error));
    }
} else {
    echo json_encode(array("error" => "No se proporcionó ID de alumno."));
}
?>
