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

$sql = "SELECT `NombreHijo`, `DNI_Hijo`, `FirmaTutor`, `Aclaracion`, `DNI_Tutor`, `Lugar`, `Fecha`, `Tipo`, `autorizo` FROM `autorizacion_imagen` WHERE id = 7 "; // Cambia el ID por el alumno deseado
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();

    $pdf = new FPDF();
    $pdf->AddPage();

    // Añadir la imagen de fondo (si es necesario)
    $pdf->Image('img/im1.jpg', 25, 25, 182);

    // Configuración de la fuente
    $pdf->SetFont('Arial', 'B', 11);
   
    $pdf->SetY(60);
    $pdf->SetX(50); 
    $pdf->Cell(0, 40, $row['Lugar'], 0, 1);
    
    $pdf->SetY(70);
    $pdf->SetX(90); 
    $pdf->Cell(0, 20, $row['Fecha'], 0, 1);

    $pdf->SetY(100);
    $pdf->SetX(50); 
    $pdf->Cell(0, 8, $row['NombreHijo'], 20, 1);

    $pdf->SetY(90);
    $pdf->SetX(65); 
    $pdf->Cell(0, 50,  $row['Tipo'], 0, 1);

    $pdf->SetY(114);
    $pdf->SetX(90); 
    $pdf->Cell(0, 3, $row['DNI_Hijo'], 0, 1);

    $pdf->SetY(145);
    $pdf->SetX(70); 
    $pdf->Cell(0, 8, $row['NombreHijo'], 20, 1);

    $pdf->SetY(123);
    $pdf->SetX(150); 
    $pdf->Cell(0, 50,  $row['Tipo'], 0, 1);

    $pdf->SetY(147);
    $pdf->SetX(172); 
    $pdf->Cell(0, 3, $row['DNI_Hijo'], 0, 1);

    $pdf->SetY(95);
    $pdf->SetX(30);
    $pdf->Cell(0, 55, $row['autorizo'], 0, 1);

    $firmaTutorPath = 'uploads/' . $row['FirmaTutor'];

    if (!file_exists($firmaTutorPath)) {
        die("La imagen no existe: $firmaTutorPath");
    }
    $pdf->SetY(152);
    $pdf->SetX(40); 
    $pdf->Image($firmaTutorPath, $pdf->GetX(), $pdf->GetY(), 30); // Ajusta el tamaño de la imagen según necesites

    $pdf->SetY(138);
    $pdf->SetX(130);
    $pdf->Cell(0, 55, $row['Aclaracion'], 0, 1);


    $pdf->Output('D', 'autorizacion_imagen.pdf');
} else {
    echo "No se encontraron registros.";
}

$conn->close();
?>
