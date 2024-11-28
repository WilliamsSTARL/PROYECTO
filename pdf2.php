<?php
require('fpdf186/fpdf.php');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "eesn7";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Consulta SQL para obtener los datos del alumno
$sql = "SELECT * FROM ficha_inscripcion WHERE id = 1";
$result = $conn->query($sql);

$sql2 = "SELECT * FROM responsable_1_alumno WHERE id = 1";
$result2 = $conn->query($sql2);

$sql3= "SELECT * FROM `responsable_2_alumno` WHERE id = 1";
$result3 = $conn->query($sql3);

$sql4= "SELECT * FROM `restricciones_judiciales` WHERE id = 1";
$result4 = $conn->query($sql4);

if ($result->num_rows > 0 && $result2->num_rows > 0 && $result3->num_rows > 0 && $result4->num_rows > 0) {
    $row = $result->fetch_assoc();
    $row2 = $result2->fetch_assoc();
    $row3 = $result3->fetch_assoc();
    $row4 = $result4->fetch_assoc();


    $pdf = new FPDF();
    $pdf->AddPage();

    $background_image_path = 'img/p1.jpg';
    $pdf->Image($background_image_path, 10, 10, 190);

    $pdf->SetFont('Arial', 'B', 11);

    // if (!empty($row['foto']) && file_exists($fotoAlumnoPath)) {
    //     $pdf->SetY(50);
    //     $pdf->SetX(147); 
    //     $pdf->Image($fotoAlumnoPath, $pdf->GetX(), $pdf->GetY(), 30);
    // } else {
    //     $pdf->SetY(50);
    //     $pdf->SetX(147);
    //     $pdf->Cell(0, 10, 'Sin foto', 0, 1);
    // }

$pdf->SetY(33);
$pdf->SetX(120);
$pdf->Cell(0, 10, $row['nombre_alumno'], 0, 1);

$pdf->SetY(33);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row['apellido_alumno'], 0, 1);

$pdf->SetY(40);
$pdf->SetX(43);
$pdf->Cell(0, 10, $row['fecha_nacimiento'], 0, 1);

// $pdf->SetY(33);
// $pdf->SetX(25);
// $pdf->Cell(0, 10, $row['tiene_dni_argentino'], 0, 1);

$pdf->SetY(59);
$pdf->SetX(82);
$pdf->Cell(0, 10, $row['nro_dni_argentino'], 0, 1);

$pdf->SetY(59);
$pdf->SetX(146);
$pdf->Cell(0, 10, $row['cuil_alumno'], 0, 1);

$pdf->SetY(65);
$pdf->SetX(160);
$pdf->Cell(0, 10, $row['posee_cpi'], 0, 1);

// $pdf->SetY(60);
// $pdf->SetX(146);
// $pdf->Cell(0, 10, $row['tipo_documento_extranjero'], 0, 1);

// // Nro de Documento Extranjero
// $pdf->SetX(30);
// $pdf->Cell(0, 10, $row['nro_documento_extranjero'], 0, 1);

$pdf->SetY(84);
$pdf->SetX(15);
$pdf->Cell(0, 10, $row['identidad_genero'], 0, 1);

//lugar de nacimiento
//nacionalidad
//provincia, otra, especificar
//distrito y localidad

$pdf->SetY(109);
$pdf->SetX(41);
$pdf->Cell(0, 10, $row['calle'], 0, 1);

$pdf->SetY(109);
$pdf->SetX(104);
$pdf->Cell(0, 10, $row['nro_calle'], 0, 1);

$pdf->SetY(109);
$pdf->SetX(128);
$pdf->Cell(0, 10, $row['piso_torre'], 0, 1);

//torre y depto

$pdf->SetY(115);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row['entre_calles'], 0, 1);

$pdf->SetY(115);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['otro_dato'], 0, 1);

$pdf->SetY(122);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row['provincia_actual'], 0, 1);

$pdf->SetY(122);
$pdf->SetX(87);
$pdf->Cell(0, 10, $row['distrito'], 0, 1);

$pdf->SetY(122);
$pdf->SetX(147);
$pdf->Cell(0, 10, $row['localidad'], 0, 1);

$pdf->SetY(128);
$pdf->SetX(42);
$pdf->Cell(0, 10, $row['telefono'], 0, 1);

$pdf->SetY(128);
$pdf->SetX(130);
$pdf->Cell(0, 10, $row['telefono_celular'], 0, 1);

$pdf->SetY(90);
$pdf->SetX(140);
$pdf->Cell(0, 10, $row['lugar_nacimiento'], 0, 1);

$pdf->SetY(90);
$pdf->SetX(165);
$pdf->Cell(0, 10, $row['nacionalidad'], 0, 1);

$pdf->SetY(96);
$pdf->SetX(144);
$pdf->Cell(0, 10, $row['provincia_nacimiento'], 0, 1);

$pdf->SetY(103);
$pdf->SetX(89);
$pdf->Cell(0, 10, $row['distrito_BA'], 0, 1);

$pdf->SetY(103);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['localidad_BA'], 0, 1);

// Tiene Hermanos
$pdf->SetY(141);
$pdf->SetX(147);
$pdf->Cell(0, 10, $row['tiene_hermanos'], 0, 1);

// Cantidad de Hermanos
$pdf->SetY(141);
$pdf->SetX(160);
$pdf->Cell(0, 10, $row['cantidad_hermanos'], 0, 1);

//cantidad que asiste al establecimiento

//lenguas distintas al castellano?

$pdf->SetY(159);
$pdf->SetX(95);
$pdf->Cell(0, 10, $row['habla_lengua_indigena'], 0, 1);

$pdf->SetY(159);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['habla_otras_lenguas'], 0, 1);

$pdf->SetY(165);
$pdf->SetX(130);
$pdf->Cell(0, 10, $row['descendiente_originario'], 0, 1);

$pdf->SetY(171);
$pdf->SetX(102);
$pdf->Cell(0, 10, $row['percibe_auh'], 0, 1);

$pdf->SetY(171);
$pdf->SetX(144);
$pdf->Cell(0, 10, $row['percibe_progresar'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(7);
$pdf->Cell(0, 10, $row['trasporte_pie_bicicleta'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(38);
$pdf->Cell(0, 10, $row['trasporte_escolar'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(84);
$pdf->Cell(0, 10, $row['trasporte_colectivo'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(106);
$pdf->Cell(0, 10, $row['trasporte_tren'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(122);
$pdf->Cell(0, 10, $row['trasporte_particular'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(157);
$pdf->Cell(0, 10, $row['trasporte_taxi'], 0, 1);

$pdf->SetY(183);
$pdf->SetX(181);
$pdf->Cell(0, 10, $row['transporte_otro'], 0, 1);

$pdf->SetY(195);
$pdf->SetX(91);
$pdf->Cell(0, 10, $row['hijos_menores'], 0, 1);

$pdf->SetY(195);
$pdf->SetX(194);
$pdf->Cell(0, 10, $row['asisten_maternal'], 0, 1);

$pdf->SetY(209);
$pdf->SetX(9);
$pdf->Cell(0, 10, $row['tiene_obra_social'], 0, 1);

$pdf->SetY(209);
$pdf->SetX(108);
$pdf->Cell(0, 10, $row['nombre_obra_social'], 0, 1);

$pdf->SetY(209);
$pdf->SetX(154);
$pdf->Cell(0, 10, $row['nro_afiliado'], 0, 1);

$pdf->SetY(232);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_asma'], 0, 1);

$pdf->SetY(237);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_celiaquia'], 0, 1);

$pdf->SetY(242);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_cardiaco'], 0, 1);

$pdf->SetY(246);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_diabetes'], 0, 1);

$pdf->SetY(250);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_presion_alta'], 0, 1);

$pdf->SetY(255);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_convulsiones'], 0, 1);

$pdf->SetY(260);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_alteracion_sanguinea'], 0, 1);

$pdf->SetY(265);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['antecedente_quemaduras_graves'], 0, 1);

// //a 

$pdf->SetY(232);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_organos'], 0, 1);

$pdf->SetY(237);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_oncologico'], 0, 1);

$pdf->SetY(242);
$pdf->SetX(177);
$pdf->Cell(0, 10, $row['antecedente_inmunodeficiencia'], 0, 1);

$pdf->SetY(247);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_fracturas'], 0, 1);

$pdf->SetY(251);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_huesos'], 0, 1);

$pdf->SetY(257);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_traumatismos'], 0, 1);

$pdf->SetY(266);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_problemas_piel'], 0, 1);


$pdf->AddPage();
  
$background_image_path2 = 'img/p2.jpg';
$pdf->Image($background_image_path2, 10, 10, 190);
        
$pdf->SetY(22);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['ejercicio_desmayo'], 0, 1);

$pdf->SetY(27);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['ejercicio_dolor_pecho'], 0, 1);

$pdf->SetY(32);
$pdf->SetX(70);
$pdf->Cell(0, 10, $row['ejercicio_mareos'], 0, 1);

$pdf->SetY(22);
$pdf->SetX(174);
$pdf->Cell(0, 10, $row['ejercicio_mayor_cansancio'], 0, 1);

$pdf->SetY(27);
$pdf->SetX(174);
$pdf->Cell(0, 10, $row['ejercicio_palpitaciones'], 0, 1);

$pdf->SetY(32);
$pdf->SetX(174);
$pdf->Cell(0, 10, $row['ejercicio_dificultad_respirar'], 0, 1);

$pdf->SetY(50);
$pdf->SetX(83);
$pdf->Cell(0, 10, $row['internacion_comun'], 0, 1);

$pdf->SetY(55);
$pdf->SetX(83);
$pdf->Cell(0, 10, $row['internacion_intensiva'], 0, 1);

$pdf->SetY(50);
$pdf->SetX(103);
$pdf->Cell(0, 10, $row['cant_veces_internado'], 0, 1);

$pdf->SetY(50);
$pdf->SetX(130);
$pdf->Cell(0, 10, $row['causa_internacion'], 0, 1);

//Cuantas veces internado en sala comun y otra en cuidados intermedios?
//Indique las causas para ambos casos.

$pdf->SetY(62);
$pdf->SetX(84);
$pdf->Cell(0, 10, $row['antecedente_alergia_grave'], 0, 1);

$pdf->SetY(73);
$pdf->SetX(54);
$pdf->Cell(0, 10, $row['alergia_medicamento'], 0, 1);

$pdf->SetY(73);
$pdf->SetX(95);
$pdf->Cell(0, 10, $row['internacion_medicamento'], 0, 1);

$pdf->SetY(77);
$pdf->SetX(54);
$pdf->Cell(0, 10, $row['alergia_vacuna'], 0, 1);

$pdf->SetY(77);
$pdf->SetX(95);
$pdf->Cell(0, 10, $row['internacion_vacuna'], 0, 1);

$pdf->SetY(82);
$pdf->SetX(54);
$pdf->Cell(0, 10, $row['alergia_alimento'], 0, 1);

$pdf->SetY(82);
$pdf->SetX(95);
$pdf->Cell(0, 10, $row['internacion_alimento'], 0, 1);

$pdf->SetY(73);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row['alergia_insectos'], 0, 1);

$pdf->SetY(73);
$pdf->SetX(188);
$pdf->Cell(0, 10, $row['internacion_insecto'], 0, 1);

$pdf->SetY(77);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row['alergia_estacional'], 0, 1);

$pdf->SetY(77);
$pdf->SetX(188);
$pdf->Cell(0, 10, $row['internacion_estacional'], 0, 1);

$pdf->SetY(82);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row['alergia_otras'], 0, 1);

$pdf->SetY(82);
$pdf->SetX(188);
$pdf->Cell(0, 10, $row['internacion_otras'], 0, 1);

$pdf->SetY(90);
$pdf->SetX(51);
$pdf->Cell(0, 10, $row['disminucion_auditiva'], 0, 1);

$pdf->SetY(90);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['usa_audifonos'], 0, 1);

$pdf->SetY(97);
$pdf->SetX(51);
$pdf->Cell(0, 10, $row['disminucion_visual'], 0, 1);

$pdf->SetY(97);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['usa_lentes'], 0, 1);

$pdf->SetY(104);
$pdf->SetX(87);
$pdf->Cell(0, 10, $row['recibe_medicacion'], 0, 1);

$pdf->SetY(104);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row['tipo_medicacion'], 0, 1);

$pdf->SetY(110);
$pdf->SetX(76);
$pdf->Cell(0, 10, $row['recibio_operacion'], 0, 1);

$pdf->SetY(117);
$pdf->SetX(68);
$pdf->Cell(0, 10, $row['motivo_operacion'], 0, 1);

$pdf->SetY(117);
$pdf->SetX(184);
$pdf->Cell(0, 10, $row['fecha_operacion'], 0, 1);

$pdf->SetY(140);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['antecedente_fam_muerte_subita'], 0, 1);

$pdf->SetY(145);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['antecedente_fam_diabetes'], 0, 1);

$pdf->SetY(150);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['antecedente_fam_cardiacos'], 0, 1);

$pdf->SetY(139);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_fam_tos_cronica'], 0, 1);

$pdf->SetY(144);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['antecedente_fam_celiaco'], 0, 1);

$pdf->SetY(165);
$pdf->SetX(25);
$pdf->Cell(0, 10, $row['establecimiento_actual_distrito'], 0, 1);

$pdf->SetY(172);
$pdf->SetX(37);
$pdf->Cell(0, 10, $row['establecimiento_actual_nombre'], 0, 1);

$pdf->SetY(172);
$pdf->SetX(141);
$pdf->Cell(0, 10, $row['establecimiento_actual_nro'], 0, 1);

$pdf->SetY(165);
$pdf->SetX(120);
$pdf->Cell(0, 10, $row['establecimiento_actual_gestion'], 0, 1);

$pdf->SetY(198);
$pdf->SetX(80);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_pais'], 0, 1);

$pdf->SetY(210);
$pdf->SetX(83);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_provincia'], 0, 1);

$pdf->SetY(210);
$pdf->SetX(153);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_distrito'], 0, 1);

$pdf->SetY(217);
$pdf->SetX(37);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_modalidad'], 0, 1);

$pdf->SetY(217);
$pdf->SetX(175);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_gestion'], 0, 1);

$pdf->SetY(224);
$pdf->SetX(143);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_dependencia'], 0, 1);

$pdf->SetY(230);
$pdf->SetX(37);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_nombre'], 0, 1);

$pdf->SetY(230);
$pdf->SetX(147);
$pdf->Cell(0, 10, $row['establecimiento_procedencia_nro'], 0, 1);

$pdf->SetY(243);
$pdf->SetX(177);
$pdf->Cell(0, 10, $row['inscripcion_modalidad'], 0, 1);

$pdf->SetY(250);
$pdf->SetX(32);
$pdf->Cell(0, 10, $row['inscripcion_orientacion'], 0, 1);

$pdf->SetY(256);
$pdf->SetX(130);   
$pdf->Cell(0, 10, $row['inscripcion_turno'], 0, 1);

$pdf->SetY(263);
$pdf->SetX(130); 
$pdf->Cell(0, 10, $row['inscripcion_jornada'], 0, 1);

$pdf->SetY(250);
$pdf->SetX(115);
$pdf->Cell(0, 10, $row['inscripcion_año'], 0, 1);

$pdf->AddPage();
  
$background_image_path3 = 'img/p3.jpg';
$pdf->Image($background_image_path3, 10, 10, 190);

$pdf->SetY(28);
$pdf->SetX(178);
$pdf->Cell(0, 10, $row['inscripcion_condicion'], 0, 1);

$pdf->SetY(42);
$pdf->SetX(86);
$pdf->Cell(0, 10, $row['inscripcion_inclusion'], 0, 1);

$pdf->SetY(48);
$pdf->SetX(110);
$pdf->Cell(0, 10, $row['tipo_inclusion'], 0, 1);

$pdf->SetY(68);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['inscripcion_asistente_externo'], 0, 1);

//A
$pdf->SetY(88);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['complementario_centro_educativo'], 0, 1);

$pdf->SetY(94);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['complementario_educacion_fisica'], 0, 1);

$pdf->SetY(100);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['complementario_educacion_estetica'], 0, 1);

$pdf->SetY(126);
$pdf->SetX(100);
$pdf->Cell(0, 10, $row['servicio_alimentario'], 0, 1);

$pdf->SetY(140);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row2['responsable1_vinculo'], 0, 1);

$pdf->SetY(147);
$pdf->SetX(28);
$pdf->Cell(0, 10, $row2['responsable1_apellido'], 0, 1);

$pdf->SetY(147);
$pdf->SetX(97);
$pdf->Cell(0, 10, $row2['responsable1_nombre'], 0, 1);

$pdf->SetY(147);
$pdf->SetX(166);
$pdf->Cell(0, 10, $row2['responsable1_nacionalidad'], 0, 1);

$pdf->SetY(154);
$pdf->SetX(177);
$pdf->Cell(0, 10, $row2['responsable1_dni_argentino'], 0, 1);

$pdf->SetY(160);
$pdf->SetX(84);
$pdf->Cell(0, 10, $row2['responsable1_nro_dni_argentino'], 0, 1);

$pdf->SetY(166);
$pdf->SetX(168);
$pdf->Cell(0, 10, $row2['responsable1_posee_CPI'], 0, 1);

$pdf->SetY(173);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row2['responsable1_tipo_documento'], 0, 1);

$pdf->SetY(173);
$pdf->SetX(157);
$pdf->Cell(0, 10, $row2['responsable1_nro_documento'], 0, 1);

$pdf->SetY(179);
$pdf->SetX(45);
$pdf->Cell(0, 10, $row2['responsable1_profesion'], 0, 1);

$pdf->SetY(180);
$pdf->SetX(181);
$pdf->Cell(0, 10, $row2['responsable1_estudio'], 0, 1);

$pdf->SetY(193);
$pdf->SetX(65);
$pdf->Cell(0, 10, $row2['responsable1_nivel_maximo_estudio'], 0, 1);

$pdf->SetY(193);
$pdf->SetX(90);
$pdf->Cell(0, 10, $row2['responsable1_finalizo_nivel'], 0, 1);

$pdf->SetY(212);
$pdf->SetX(29);
$pdf->Cell(0, 10, $row2['responsable1_actividad_estudia'], 0, 1);

$pdf->SetY(212);
$pdf->SetX(53);
$pdf->Cell(0, 10, $row2['responsable1_actividad_trabaja'], 0, 1);

$pdf->SetY(212);
$pdf->SetX(85);
$pdf->Cell(0, 10, $row2['responsable1_actividad_busca_trabajo'], 0, 1);

$pdf->SetY(212);
$pdf->SetX(143);
$pdf->Cell(0, 10, $row2['responsable1_actividad_cuidado_no_pago'], 0, 1);

$pdf->SetY(212);
$pdf->SetX(195);
$pdf->Cell(0, 10, $row2['responsable1_actividad_recibe_jubilacion'], 0, 1);

$pdf->SetY(218);
$pdf->SetX(195);
$pdf->Cell(0, 10, $row2['responsable1_convive_con_estudiante'], 0, 1);

$pdf->SetY(225);
$pdf->SetX(22);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_calle'], 0, 1);

$pdf->SetY(225);
$pdf->SetX(107);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_nro'], 0, 1);

$pdf->SetY(225);
$pdf->SetX(132);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_piso'], 0, 1);

//torre y depto

$pdf->SetY(231);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_entre_calles'], 0, 1);

//y calle 

$pdf->SetY(231);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_otro_dato'], 0, 1);

$pdf->SetY(238);
$pdf->SetX(27);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_provincia'], 0, 1);

$pdf->SetY(238);
$pdf->SetX(90);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_distrito'], 0, 1);

$pdf->SetY(238);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_localidad'], 0, 1);

$pdf->SetY(245);
$pdf->SetX(42);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_telefono'], 0, 1);

$pdf->SetY(245);
$pdf->SetX(140);
$pdf->Cell(0, 10, $row2['responsable1_telefono_celular'], 0, 1);

$pdf->SetY(250);
$pdf->SetX(40);
$pdf->Cell(0, 10, $row2['responsable1_email'], 0, 1);

$pdf->SetY(250);
$pdf->SetX(40);
$pdf->Cell(0, 10, $row2['responsable1_email'], 0, 1);

$pdf->AddPage();

$background_image_path3 = 'img/p4.jpg';
$pdf->Image($background_image_path3, 10, 10, 190);

$pdf->SetY(20);
$pdf->SetX(160);
$pdf->Cell(0, 10, $row3['responsable2_vinculo'], 0, 1);

$pdf->SetY(27);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row3['responsable2_apellido'], 0, 1);

$pdf->SetY(27);
$pdf->SetX(98);
$pdf->Cell(0, 10, $row3['responsable2_nombre'], 0, 1);

$pdf->SetY(27);
$pdf->SetX(167);
$pdf->Cell(0, 10, $row3['responsable2_nacionalidad'], 0, 1);

$pdf->SetY(34);
$pdf->SetX(179);
$pdf->Cell(0, 10, $row3['responsable2_dni_argentino'], 0, 1);

$pdf->SetY(40);
$pdf->SetX(84);
$pdf->Cell(0, 10, $row3['responsable2_nro_dni_argentino'], 0, 1);

$pdf->SetY(45);
$pdf->SetX(168);
$pdf->Cell(0, 10, $row3['responsable2_posee_CPI'], 0, 1);

$pdf->SetY(53);
$pdf->SetX(148);
$pdf->Cell(0, 10, $row3['responsable2_tipo_documento'], 0, 1);

$pdf->SetY(53);
$pdf->SetX(160);
$pdf->Cell(0, 10, $row3['responsable2_nro_documento'], 0, 1);

$pdf->SetY(59);
$pdf->SetX(45);
$pdf->Cell(0, 10, $row3['responsable2_profesion'], 0, 1);

$pdf->SetY(59);
$pdf->SetX(180);
$pdf->Cell(0, 10, $row3['responsable2_estudio'], 0, 1);

$pdf->SetY(72);
$pdf->SetX(71);
$pdf->Cell(0, 10, $row3['responsable2_nivel_maximo_estudio'], 0, 1);

$pdf->SetY(72);
$pdf->SetX(90);
$pdf->Cell(0, 10, $row3['responsable2_finalizo_nivel'], 0, 1);
//a
$pdf->SetY(92);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row3['responsable2_actividad_estudia'], 0, 1);

$pdf->SetY(92);
$pdf->SetX(54);
$pdf->Cell(0, 10, $row3['responsable2_actividad_trabaja'], 0, 1);

$pdf->SetY(92);
$pdf->SetX(87);
$pdf->Cell(0, 10, $row3['responsable2_actividad_busca_trabajo'], 0, 1);

$pdf->SetY(92);
$pdf->SetX(147);
$pdf->Cell(0, 10, $row3['responsable2_actividad_cuidado_no_pago'], 0, 1);

$pdf->SetY(92);
$pdf->SetX(196);
$pdf->Cell(0, 10, $row3['responsable2_actividad_recibe_jubilacion'], 0, 1);
//a
$pdf->SetY(98);
$pdf->SetX(195);
$pdf->Cell(0, 10, $row3['responsable2_convive_con_estudiante'], 0, 1);

$pdf->SetY(105);
$pdf->SetX(22);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_calle'], 0, 1);

$pdf->SetY(105);
$pdf->SetX(108);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_nro'], 0, 1);

$pdf->SetY(105);
$pdf->SetX(133);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_piso'], 0, 1);

//torre y deptos

$pdf->SetY(112);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row2['responsable1_domicilio_entre_calles'], 0, 1);

//y calle 

$pdf->SetY(112);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_otro_dato'], 0, 1);

$pdf->SetY(118);
$pdf->SetX(28);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_provincia'], 0, 1);

$pdf->SetY(118);
$pdf->SetX(88);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_distrito'], 0, 1);

$pdf->SetY(118);
$pdf->SetX(150);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_localidad'], 0, 1);


$pdf->SetY(124);
$pdf->SetX(44);
$pdf->Cell(0, 10, $row3['responsable2_domicilio_telefono'], 0, 1);

$pdf->SetY(124);
$pdf->SetX(140);
$pdf->Cell(0, 10, $row3['responsable2_telefono_celular'], 0, 1);

$pdf->SetY(131);
$pdf->SetX(41);
$pdf->Cell(0, 10, $row3['responsable2_email'], 0, 1);

//faltan restricciones

$pdf->SetY(144);
$pdf->SetX(30);
$pdf->Cell(0, 10, $row4['restriccion_nombre'], 0, 1);

$pdf->SetY(144);
$pdf->SetX(107);
$pdf->Cell(0, 10, $row4['restriccion_apellido'], 0, 1);

$pdf->SetY(151);
$pdf->SetX(32);
$pdf->Cell(0, 10, $row4['restriccion_tipo_documento'], 0, 1);

$pdf->SetY(151);
$pdf->SetX(53);
$pdf->Cell(0, 10, $row4['restriccion_nro_documento'], 0, 1);

$pdf->SetY(151);
$pdf->SetX(115);
$pdf->Cell(0, 10, $row4['descripcion_restriccion'], 0, 1);


//El tema de la firma es que no se puede guardar la imagen de la firma de un padre, no es seguro.
// $pdf->SetY(144);
// $pdf->SetX(175);
// $pdf->Cell(0, 10, $row['url_firma_responsable'], 0, 1);

$pdf->SetY(225);
$pdf->SetX(122);
$pdf->Cell(0, 10, $row['aclaracion_firma'], 0, 1);

$pdf->SetY(232);
$pdf->SetX(44);
$pdf->Cell(0, 10, $row['fecha_inscripcion'], 0, 1);


$pdf->Output('D', 'ficha_inscripcion.pdf');
} else {
    echo "No se encontraron registros.";
}

$conn->close();
?>