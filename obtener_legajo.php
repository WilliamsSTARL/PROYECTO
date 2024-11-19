<?php
require "conexion.php";

if (isset($_GET['id_alumno'])) {
    $id_alumno = $_GET['id_alumno'];
    
    $consulta = "SELECT id, apellido, nombre, dni, domicilio, localidad, foto, telefono, email, tutor, curso, observaciones, ficha_inscripcion, dni_alumno, cuil_alumno, certificado_nacimiento, ficha_salud, vacunas, certificado_salud, certificado_oftalmologico, dni_tutor, certificado_aprobacion, otros, Fecha_nacimiento, Lugar, Division 
                 FROM legajo_alumno 
                 WHERE id = ?";
    
    if ($stmt = mysqli_prepare($conexion, $consulta)) {
        mysqli_stmt_bind_param($stmt, "i", $id_alumno);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $id, $apellido, $nombre, $dni, $domicilio, $localidad, $foto, $telefono, $email, $tutor, $curso, $observaciones, $ficha_inscripcion, $dni_alumno, $cuil_alumno, $certificado_nacimiento, $ficha_salud, $vacunas, $certificado_salud, $certificado_oftalmologico, $dni_tutor, $certificado_aprobacion, $otros, $Fecha_nacimiento, $Lugar, $Division);
        
        if (mysqli_stmt_fetch($stmt)) {
    
            $response = array(
                'success' => true,
                'legajo' => array(
                    'id' => $id,
                    'apellido' => $apellido,
                    'nombre' => $nombre,
                    'dni' => $dni,
                    'domicilio' => $domicilio,
                    'localidad' => $localidad,
                    'foto' => $foto,
                    'telefono' => $telefono,
                    'email' => $email,
                    'tutor' => $tutor,
                    'curso' => $curso,
                    'observaciones' => $observaciones,
                    'ficha_inscripcion' => $ficha_inscripcion,
                    'dni_alumno' => $dni_alumno,
                    'cuil_alumno' => $cuil_alumno,
                    'certificado_nacimiento' => $certificado_nacimiento,
                    'ficha_salud' => $ficha_salud,
                    'vacunas' => $vacunas,
                    'certificado_salud' => $certificado_salud,
                    'certificado_oftalmologico' => $certificado_oftalmologico,
                    'dni_tutor' => $dni_tutor,
                    'certificado_aprobacion' => $certificado_aprobacion,
                    'otros' => $otros,
                    'Fecha_nacimiento' => $Fecha_nacimiento,
                    'Lugar' => $Lugar,
                    'Division' => $Division
                )
            );
        } else {

            $response = array(
                'success' => false,
                'message' => 'No se encontró el legajo del alumno.'
            );
        }

        mysqli_stmt_close($stmt);
    } else {

        $response = array(
            'success' => false,
            'message' => 'Error en la consulta de la base de datos.'
        );
    }
    

    mysqli_close($conexion);
} else {

    $response = array(
        'success' => false,
        'message' => 'No se ha proporcionado el ID del alumno.'
    );
}

header('Content-Type: application/json');

echo json_encode($response);