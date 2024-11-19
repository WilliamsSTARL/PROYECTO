function cargarDatosAlumno() {
    const urlParams = new URLSearchParams(window.location.search);
    const alumnoId = urlParams.get('usuario_id'); 

    console.log("Intentando cargar datos para el ID de alumno:", alumnoId);

    if (alumnoId) {
        fetch(`js/acciones_anexo1.php?alumno_id=${alumnoId}`)  
            .then(response => {
                if (!response.ok) {
                    throw new Error('Respuesta de red no fue ok');
                }
                return response.json();
            })
            .then(data => {
                console.log("Datos recibidos:", data);
                if (data) {
                    document.querySelector('input[name="Apellido"]').value = data.apellido || '';
                    document.querySelector('input[name="Nombre"]').value = data.nombre || '';
                    document.querySelector('input[name="DNI"]').value = data.dni || '';
                    document.querySelector('input[name="Domicilio"]').value = data.domicilio || '';
                    document.querySelector('select[name="Localidad"]').value = data.localidad || '';
                    document.querySelector('input[name="Telefono"]').value = data.telefono || '';
                    document.querySelector('input[name="Email"]').value = data.email || '';
                    document.querySelector('input[name="Lugar"]').value = data.lugar || '';
                    document.querySelector('input[name="Fecha"]').value = data.Fecha_nacimiento.split(' ')[0] || '';
                    document.querySelector('input[name="Tutor"]').value = data.tutor || '';
                    document.querySelector('select[name="Curso"]').value = data.curso || '';
                    document.querySelector('select[name="Division"]').value = data.division || '';
                    document.querySelector('input[name="Observaciones"]').value = data.observaciones || '';

               
                    const fields = {
                        "F/INSCRIPCION": data.ficha_inscripcion,
                        "DNIalumno": data.dni_alumno,
                        "CUILdelAlumno": data.cuil_alumno,
                        "Certificadodenacimiento": data.certificado_nacimiento,
                        "Fichadesalud": data.ficha_salud,
                        "Vacunas": data.vacunas,
                        "Odontologico": data.odontologico,
                        "Certificadodesalud": data.certificado_salud,
                        "CertificadoOftalmologico": data.certificado_oftalmologico,
                        "DNItutor": data.dni_tutor,
                        "Certificadodeaprobación": data.certificado_aprobacion,
                        "PASE": data.pase,
                        "AImagen": data.aimagen,
                        "Otros": data.otros
                    };

                    for (const [fieldName, fieldValue] of Object.entries(fields)) {
                        let checkbox = document.querySelector(`input[name="${fieldName}"][value="SI"]`);
                        if (checkbox) {
                            checkbox.checked = fieldValue === 'SI';
                        } else {
                            console.warn(`Checkbox no encontrado para el campo: ${fieldName}`);
                        }
                    }
                }
            })
            .catch(error => {
                console.error('Error al obtener datos:', error);
            });
    } else {
        console.log("No se proporcionó ID de alumno en la URL.");
    }
}

document.addEventListener('DOMContentLoaded', cargarDatosAlumno);
