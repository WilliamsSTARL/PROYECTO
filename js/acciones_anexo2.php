<?php
include 'conexion.php';  

if (isset($_GET['alumno_id'])) {
    $alumno_id = $_GET['alumno_id'];

    // Consulta para datos del alumno
    $queryAlumno = "SELECT `nombre_alumno`, `apellido_alumno`, `fecha_nacimiento`, `tiene_dni_argentino`, `nro_dni_argentino`, `cuil_alumno`, `posee_cpi`, `tipo_documento_extranjero`, `nro_documento_extranjero`, `identidad_genero`, 
    `calle`, `nro_calle`, `piso_torre`, `entre_calles`, `otro_dato`, `provincia_actual`, `distrito`, `localidad`, `telefono`, `telefono_celular`, 
    `lugar_nacimiento`, `nacionalidad`, `provincia_nacimiento`, `distrito_BA`, `localidad_BA`, `tiene_hermanos`, `cantidad_hermanos`, `habla_lengua_indigena`, `habla_otras_lenguas`, `descendiente_originario`, 
    `percibe_auh`, `percibe_progresar`, `trasporte_pie_bicicleta`, `trasporte_escolar`, `trasporte_colectivo`, `trasporte_tren`, `trasporte_particular`, `trasporte_taxi`, `transporte_otro`, `hijos_menores`, 
    `asisten_maternal`, `tiene_obra_social`, `nombre_obra_social`, `nro_afiliado`, `antecedente_asma`, `antecedente_celiaquia`, `antecedente_cardiaco`, `antecedente_diabetes`, `antecedente_presion_alta`, `antecedente_convulsiones`, 
    `antecedente_alteracion_sanguinea`, `antecedente_quemaduras_graves`, `antecedente_organos`, `antecedente_oncologico`, `antecedente_inmunodeficiencia`, `antecedente_fracturas`, `antecedente_huesos`, `antecedente_traumatismos`, `antecedente_problemas_piel`, 
    `ejercicio_desmayo`, `ejercicio_dolor_pecho`, `ejercicio_mareos`, `ejercicio_mayor_cansancio`, `ejercicio_palpitaciones`, `ejercicio_dificultad_respirar`, `internacion_comun`, `internacion_intensiva`, `cant_veces_internado`, `causa_internacion`, 
    `antecedente_alergia_grave`, `alergia_medicamento`, `internacion_medicamento`, `alergia_vacuna`, `internacion_vacuna`, `alergia_alimento`, `internacion_alimento`, `alergia_insectos`, `internacion_insecto`, `alergia_estacional`, 
    `internacion_estacional`, `alergia_otras`, `internacion_otras`, `disminucion_auditiva`, `usa_audifonos`, `disminucion_visual`, `usa_lentes`, `recibe_medicacion`, `tipo_medicacion`, `recibio_operacion`, 
    `motivo_operacion`, `fecha_operacion`, `antecedente_fam_muerte_subita`, `antecedente_fam_diabetes`, `antecedente_fam_cardiacos`, `antecedente_fam_tos_cronica`, `antecedente_fam_celiaco`, `establecimiento_actual_distrito`, `establecimiento_actual_nombre`, `establecimiento_actual_nro`, 
    `establecimiento_actual_gestion`, `establecimiento_procedencia_pais`, `establecimiento_procedencia_provincia`, `establecimiento_procedencia_distrito`, `establecimiento_procedencia_modalidad`, `establecimiento_procedencia_gestion`, `establecimiento_procedencia_dependencia`, `establecimiento_procedencia_nombre`, `establecimiento_procedencia_nro`, `inscripcion_modalidad`, 
    `inscripcion_orientacion`, `inscripcion_turno`, `inscripcion_jornada`, `inscripcion_año`, `inscripcion_condicion`, `inscripcion_inclusion`, `tipo_inclusion`, `inscripcion_asistente_externo`, `complementario_centro_educativo`, `complementario_educacion_fisica`, 
    `complementario_educacion_estetica`, `servicio_alimentario`, `url_firma_responsable`, `aclaracion_firma`, `fecha_inscripcion` FROM `ficha_inscripcion` WHERE `id` = ?";

    // Consulta para datos del responsable 1
    $queryResponsable1 = "SELECT `id`, `fk_alumno`, `responsable1_vinculo`, `responsable1_apellido`, `responsable1_nombre`, `responsable1_nacionalidad`, `responsable1_dni_argentino`, `responsable1_nro_dni_argentino`, `responsable1_posee_CPI`, `responsable1_tipo_documento`, 
    `responsable1_nro_documento`, `responsable1_profesion`, `responsable1_estudio`, `responsable1_nivel_maximo_estudio`, `responsable1_finalizo_nivel`, `responsable1_actividad_estudia`, `responsable1_actividad_trabaja`, `responsable1_actividad_busca_trabajo`, `responsable1_actividad_cuidado_no_pago`, 
    `responsable1_actividad_recibe_jubilacion`, `responsable1_convive_con_estudiante`, `responsable1_domicilio_calle`, `responsable1_domicilio_nro`, `responsable1_domicilio_piso`, `responsable1_domicilio_entre_calles`, `responsable1_domicilio_otro_dato`, `responsable1_domicilio_provincia`, `responsable1_domicilio_distrito`, 
    `responsable1_domicilio_localidad`, `responsable1_domicilio_telefono`, `responsable1_telefono_celular`, `responsable1_email` FROM `responsable_1_alumno` WHERE `fk_alumno` = ?";

    // Consulta para datos del responsable 2
    $queryResponsable2 = "SELECT `id`, `fk_alumno`, `responsable2_vinculo`, `responsable2_apellido`, `responsable2_nombre`, `responsable2_nacionalidad`, `responsable2_dni_argentino`, `responsable2_nro_dni_argentino`, `responsable2_posee_CPI`, `responsable2_tipo_documento`, 
    `responsable2_nro_documento`, `responsable2_profesion`, `responsable2_estudio`, `responsable2_nivel_maximo_estudio`, `responsable2_finalizo_nivel`, `responsable2_actividad_estudia`, `responsable2_actividad_trabaja`, `responsable2_actividad_busca_trabajo`, `responsable2_actividad_cuidado_no_pago`, 
    `responsable2_actividad_recibe_jubilacion`, `responsable2_convive_con_estudiante`, `responsable2_domicilio_calle`, `responsable2_domicilio_nro`, `responsable2_domicilio_piso`, `responsable2_domicilio_entre_calles`, `responsable2_domicilio_otro_dato`, `responsable2_domicilio_provincia`, `responsable2_domicilio_distrito`, 
    `responsable2_domicilio_localidad`, `responsable2_domicilio_telefono`, `responsable2_telefono_celular`, `responsable2_email` FROM `responsable_2_alumno` WHERE `fk_alumno` = ?";

    $data = array();
    if ($stmtAlumno = $conexion->prepare($queryAlumno)) {
        $stmtAlumno->bind_param("i", $alumno_id);
        $stmtAlumno->execute();
        $resultAlumno = $stmtAlumno->get_result();
        if ($resultAlumno->num_rows > 0) {
            $data['alumno'] = $resultAlumno->fetch_assoc();
        } else {
            $data['alumno'] = array("error" => "No se encontró el alumno con el ID especificado. Verifique que el ID sea correcto.");
        }
        $stmtAlumno->close();
    } else {
        $data['alumno'] = array("error" => "Error al preparar la consulta de alumno: " . $conexion->error);
    }

    if ($stmtResponsable1 = $conexion->prepare($queryResponsable1)) {
        $stmtResponsable1->bind_param("i", $alumno_id);
        $stmtResponsable1->execute();
        $resultResponsable1 = $stmtResponsable1->get_result();
        if ($resultResponsable1->num_rows > 0) {
            $data['responsable1'] = $resultResponsable1->fetch_assoc();
        } else {
            $data['responsable1'] = array("error" => "No se encontró el responsable con el ID de alumno especificado.");
        }
        $stmtResponsable1->close();
    } else {
        $data['responsable1'] = array("error" => "Error al preparar la consulta de responsable: " . $conexion->error);
    }

    if ($stmtResponsable2 = $conexion->prepare($queryResponsable2)) {
        $stmtResponsable2->bind_param("i", $alumno_id);
        $stmtResponsable2->execute();
        $resultResponsable2 = $stmtResponsable2->get_result();
        if ($resultResponsable2->num_rows > 0) {
            $data['responsable2'] = $resultResponsable2->fetch_assoc();
        } else {
            $data['responsable2'] = array("error" => "No se encontró el responsable con el ID de alumno especificado.");
        }
        $stmtResponsable2->close();
    } else {
        $data['responsable2'] = array("error" => "Error al preparar la consulta de responsable: " . $conexion->error);
    }
    echo json_encode($data);
}
