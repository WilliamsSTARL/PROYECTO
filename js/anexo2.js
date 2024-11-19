function cargarDatosAlumno() {
    const urlParams = new URLSearchParams(window.location.search);
    const alumnoId = urlParams.get('usuario_id'); 

    console.log("Intentando cargar datos para el ID de alumno:", alumnoId);

    if (alumnoId) {
        fetch(`js/acciones_anexo2.php?alumno_id=${alumnoId}`)  
            .then(response => {
                if (!response.ok) {
                    throw new Error('Respuesta de red no fue ok');
                }
                return response.json();
            })
            .then(data => {
                console.log("Datos recibidos:", data);
                if (data) {
                    // Alumno
                    document.querySelector('input[name="apellido_alumno"]').value = data.alumno.apellido_alumno || '';
                    document.querySelector('input[name="nombre_alumno"]').value = data.alumno.nombre_alumno || '';
                    document.querySelector('input[name="nro_dni_argentino"]').value = data.alumno.nro_dni_argentino || '';
                    document.querySelector('input[name="domicilio_calle"]').value = data.alumno.calle || '';
                    document.querySelector('input[name="nacionalidad"]').value = data.alumno.nacionalidad || '';
                    document.querySelector('input[name="fecha_nacimiento_alumno"]').value = data.alumno.fecha_nacimiento.split(' ')[0] || '';
                    document.querySelector('input[name="localidad"]').value = data.alumno.localidad || '';
                    document.querySelector('input[name="telefono_celular"]').value = data.alumno.telefono_celular || '';
                    document.querySelector('input[name="distrito_BA"]').value = data.alumno.distrito_BA || '';
                    document.querySelector('input[name="localidad_BA"]').value = data.alumno.localidad_BA || '';
                    document.querySelector('input[name="cuil_alumno"]').value = data.alumno.cuil_alumno || '';
                    document.querySelector('input[name="cantidad_hermanos"]').value = data.alumno.cantidad_hermanos || '';
                    document.querySelector('input[name="tipo_documento_extranjero"]').value = data.alumno.tipo_documento_extranjero || '';
                    document.querySelector('input[name="nro_documento_extranjero"]').value = data.alumno.nro_documento_extranjero || '';
                    document.querySelector('input[name="domicilio_calle"]').value = data.alumno.calle || '';
                    document.querySelector('input[name="domicilio_numero"]').value = data.alumno.nro_calle || '';
                    document.querySelector('input[name="domicilio_piso_torre_depto"]').value = data.alumno.piso_torre || '';
                    document.querySelector('input[name="domicilio_entre_calles"]').value = data.alumno.entre_calles || '';
                    document.querySelector('input[name="domicilio_otro_dato"]').value = data.alumno.otro_dato || '';
                    document.querySelector('input[name="provincia"]').value = data.alumno.provincia_actual || '';
                    document.querySelector('input[name="distrito"]').value = data.alumno.distrito || '';
                    document.querySelector('input[name="localidad"]').value = data.alumno.localidad || '';
                    document.querySelector('input[name="telefono_celular"]').value = data.alumno.telefono_celular || '';
                    document.querySelector('input[name="obra_social_nombre"]').value = data.alumno.nombre_obra_social || '';
                    document.querySelector('input[name="obra_social_numero"]').value = data.alumno.nro_afiliado || '';
                    document.querySelector('input[name="CualMedicación"]').value = data.alumno.tipo_medicacion || '';
                    document.querySelector('input[name="MotivoOperacion"]').value = data.alumno.motivo_operacion || '';
                    document.querySelector('input[name="AnoOperacion"]').value = data.alumno.fecha_operacion.split(' ')[0] || '';
                    document.querySelector('input[name="VECES"]').value = data.alumno.cant_veces_internado || '';
                    document.querySelector('input[name="CAUSA"]').value = data.alumno.causa_internacion || '';
                    document.querySelector('input[name="datos_establecimiento_distrito"]').value = data.alumno.establecimiento_actual_distrito || '';
                    document.querySelector('input[name="datos_establecimiento_nombre"]').value = data.alumno.establecimiento_actual_nombre || '';
                    document.querySelector('input[name="datos_establecimiento_numero"]').value = data.alumno.establecimiento_actual_nro || '';
                    document.querySelector('input[name="Orientacion"]').value = data.alumno.inscripcion_orientacion || '';      
                    document.querySelector('input[name="DistritoB"]').value = data.alumno.establecimiento_procedencia_distrito || '';
                    document.querySelector('input[name="NivelModalidad"]').value = data.alumno.establecimiento_procedencia_modalidad || '';
                    document.querySelector('input[name="NombreEscuelaProcedencia"]').value = data.alumno.establecimiento_procedencia_nombre || '';
                    document.querySelector('input[name="N2"]').value = data.alumno.establecimiento_procedencia_nro || '';
                    
                    // Responsable 1
                    
                    document.querySelector('input[name="responsable_1_apellido"]').value = data.responsable1.responsable1_apellido || '';
                    document.querySelector('input[name="responsable_1_nombre"]').value = data.responsable1.responsable1_nombre || '';
                    document.querySelector('input[name="responsable_1_nacionalidad"]').value = data.responsable1.responsable1_nacionalidad || '';
                    document.querySelector('input[name="responsable_1_numero_dni_argentino"]').value = data.responsable1.responsable1_nro_dni_argentino || '';
                    document.querySelector('input[name="DOCEXTRAN"]').value = data.responsable1.responsable1_tipo_documento || '';
                    document.querySelector('input[name="NUMEXTRAN"]').value = data.responsable1.responsable1_nro_documento || '';
                    document.querySelector('input[name="responsable_1_profesion"]').value = data.responsable1.responsable1_profesion || '';
                    document.querySelector('input[name="responsable_1_domicilio_calle"]').value = data.responsable1.responsable1_domicilio_calle || '';
                    document.querySelector('input[name="responsable_1_domicilio_numero"]').value = data.responsable1.responsable1_domicilio_nro || '';
                    document.querySelector('input[name="responsable_1_domicilio_piso_torre_depto"]').value = data.responsable1.responsable1_domicilio_piso || '';
                    document.querySelector('input[name="responsable_1_domicilio_entre_calles"]').value = data.responsable1.responsable1_domicilio_entre_calles || '';
                    document.querySelector('input[name="responsable_1_domicilio_otro_dato"]').value = data.responsable1.responsable1_domicilio_otro_dato || '';
                    document.querySelector('input[name="responsable_1_provincia"]').value = data.responsable1.responsable1_domicilio_provincia || '';
                    document.querySelector('input[name="responsable_1_distrito"]').value = data.responsable1.responsable1_domicilio_distrito || '';
                    document.querySelector('input[name="responsable_1_localidad"]').value = data.responsable1.responsable1_domicilio_localidad || '';
                    document.querySelector('input[name="responsable_1_telefono_area"]').value = data.responsable1.responsable1_domicilio_telefono || '';
                    document.querySelector('input[name="responsable_1_telefono_celular"]').value = data.responsable1.responsable1_telefono_celular || '';
                    document.querySelector('input[name="responsable_1_correo_electronico"]').value = data.responsable1.responsable1_email|| '';
                    
                    // Responsable 2
                    
                    document.querySelector('input[name="responsable_2_apellido"]').value = data.responsable2.responsable2_apellido || '';
                    document.querySelector('input[name="responsable_2_nombre"]').value = data.responsable2.responsable2_nombre || '';
                    document.querySelector('input[name="responsable_2_nacionalidad"]').value = data.responsable2.responsable2_nacionalidad || '';
                    document.querySelector('input[name="responsable_2_numero_dni_argentino"]').value = data.responsable2.responsable2_nro_dni_argentino || '';
                    document.querySelector('input[name="TipoDocExtranjero2"]').value = data.responsable2.responsable2_tipo_documento || '';
                    document.querySelector('input[name="NumDocExtranjero2"]').value = data.responsable2.responsable2_nro_documento || '';
                    document.querySelector('input[name="responsable_2_profesion"]').value = data.responsable2.responsable2_profesion || '';
                    document.querySelector('input[name="responsable_2_domicilio_calle"]').value = data.responsable2.responsable2_domicilio_calle || '';
                    document.querySelector('input[name="responsable_2_domicilio_numero"]').value = data.responsable2.responsable2_domicilio_nro || '';
                    document.querySelector('input[name="responsable_2_domicilio_piso_torre_depto"]').value = data.responsable2.responsable2_domicilio_piso || '';
                    document.querySelector('input[name="responsable_2_domicilio_entre_calles"]').value = data.responsable2.responsable2_domicilio_entre_calles || '';
                    document.querySelector('input[name="responsable_2_domicilio_otro_dato"]').value = data.responsable2.responsable2_domicilio_otro_dato || '';
                    document.querySelector('input[name="responsable_2_provincia"]').value = data.responsable2.responsable2_domicilio_provincia || '';
                    document.querySelector('input[name="responsable_2_distrito"]').value = data.responsable2.responsable2_domicilio_distrito || '';
                    document.querySelector('input[name="responsable_2_localidad"]').value = data.responsable2.responsable2_domicilio_localidad || '';
                    document.querySelector('input[name="responsable_2_telefono_area"]').value = data.responsable2.responsable2_domicilio_telefono || '';
                    document.querySelector('input[name="responsable_2_telefono_celular"]').value = data.responsable2.responsable2_telefono_celular || '';
                    document.querySelector('input[name="responsable_2_correo_electronico"]').value = data.responsable2.responsable2_email|| '';

                    try {
                        const fields = {
                            "responsable_1_convive": data.responsable1.responsable1_convive_con_estudiante,
                            "responsable_1_certificado_preidentificacion": data.responsable1.responsable1_posee_CPI,
                            "responsable_1_educacion": data.responsable1.responsable1_estudio,
                            "responsable_1_completo": data.responsable1.responsable1_finalizo_nivel,
                            "responsable_2_convive": data.responsable2.responsable2_convive_con_estudiante,
                            "responsable_2_certificado_preidentificacion": data.responsable2.responsable2_posee_CPI,
                            "responsable_2_educacion": data.responsable2.responsable2_estudio,
                            "responsable_2_completo": data.responsable2.responsable2_finalizo_nivel,
                            "asignacion_universal": data.alumno.percibe_auh,
                            "certificado_preidentificacion": data.alumno.posee_cpi,
                            "progresar": data.alumno.percibe_progresar,
                            "medio_transporte": data.alumno.trasporte_pie_bicicleta,
                            "trasporte_escolar": data.alumno.trasporte_escolar,
                            "trasporte_colectivo": data.alumno.trasporte_colectivo,
                            "lengua_indigena": data.alumno.habla_lengua_indigena,
                            "otras_lenguas": data.alumno.habla_otras_lenguas,
                            "pueblos_originarios": data.alumno.descendiente_originario,
                            "trasporte_tren": data.alumno.trasporte_tren,
                            "trasporte_particular": data.alumno.trasporte_particular,
                            "trasporte_taxi": data.alumno.trasporte_taxi,
                            "transporte_otro": data.alumno.transporte_otro,
                            "obra_social": data.alumno.tiene_obra_social,
                            "obra_social_nombre": data.alumno.nombre_obra_social,
                            "obra_social_numero": data.alumno.nro_afiliado,
                            "Asma": data.alumno.antecedente_asma,
                            "Celiaquia": data.alumno.antecedente_celiaquia,
                            "ProblemasCardiacos": data.alumno.antecedente_cardiaco,
                            "Diabetes": data.alumno.antecedente_diabetes,
                            "PresionAlta": data.alumno.antecedente_presion_alta,
                            "Convulsiones": data.alumno.antecedente_convulsiones,
                            "AlteracionesSanguineas": data.alumno.antecedente_alteracion_sanguinea,
                            "Quemaduras": data.alumno.antecedente_quemaduras_graves,
                            "FaltaOrgano": data.alumno.antecedente_organos,
                            "EnfermedadOncohematologica": data.alumno.antecedente_oncologico,
                            "Inmunodeficiencias": data.alumno.antecedente_inmunodeficiencia,
                            "Fracturas": data.alumno.antecedente_fracturas,
                            "ProblemasHuesos": data.alumno.antecedente_huesos,
                            "TraumatismoCráneo": data.alumno.antecedente_traumatismos,
                            "ProblemasPiel": data.alumno.antecedente_problemas_piel,
                            "Desmayos": data.alumno.ejercicio_desmayo,
                            "DolorPecho": data.alumno.ejercicio_dolor_pecho,
                            "Mareos": data.alumno.ejercicio_mareos,
                            "MayorCansancio": data.alumno.ejercicio_mayor_cansancio,
                            "Palpitaciones": data.alumno.ejercicio_palpitaciones,
                            "DificultadRespirar": data.alumno.ejercicio_dificultad_respirar,
                            "Internacion/SC": data.alumno.internacion_comun,
                            "Internacion/CII": data.alumno.internacion_intensiva,
                            "VECES": data.alumno.cant_veces_internado,
                            "CAUSA": data.alumno.causa_internacion,
                            "AlergiaGrave": data.alumno.antecedente_alergia_grave,
                            "AlergiaMedicamentos": data.alumno.alergia_medicamento,
                            "AlergiaInternacion/M": data.alumno.internacion_medicamento,
                            "AlergiaVacunas": data.alumno.alergia_vacuna,
                            "AlergiaInternacion/V": data.alumno.internacion_vacuna,
                            "AlergiaAlimentos": data.alumno.alergia_alimento,
                            "AlergiaInternacion/A": data.alumno.internacion_alimento,
                            "AlergiaPicaduras": data.alumno.alergia_insectos,
                            "AlergiaInternacion/P": data.alumno.internacion_insecto,
                            "AlergiaEstacionales": data.alumno.alergia_estacional,
                            "AlergiaInternacion/E": data.alumno.internacion_estacional,
                            "AlergiaOtras": data.alumno.alergia_otras,
                            "AlergiaInternacion/O": data.alumno.internacion_otras,
                            "DisminucionAuditiva": data.alumno.disminucion_auditiva,
                            "UsoAudifonos": data.alumno.usa_audifonos,
                            "DisminucionVisual": data.alumno.disminucion_visual,
                            "UsoLentes": data.alumno.usa_lentes,
                            "MedicaciónHabitual": data.alumno.recibe_medicacion,
                            "CualMedicación": data.alumno.tipo_medicacion,
                            "Operacion": data.alumno.recibio_operacion,
                            "MotivoOperacion": data.alumno.motivo_operacion,
                            "MuerteSubita": data.alumno.antecedente_fam_muerte_subita,
                            "DiabetesFamiliar": data.alumno.antecedente_fam_diabetes,
                            "ProblemasCardiacosFamiliar": data.alumno.antecedente_fam_cardiacos,
                            "TosCronica": data.alumno.antecedente_fam_tos_cronica,  
                            "CeliaquiaFamiliar": data.alumno.antecedente_fam_celiaco,
                            "trasporte_pie_bicicleta": data.alumno.trasporte_pie_bicicleta,
                            "trasporte_escolar": data.alumno.trasporte_escolar,
                            "trasporte_colectivo": data.alumno.trasporte_colectivo,
                            "trasporte_tren": data.alumno.trasporte_tren,
                            "trasporte_particular": data.alumno.trasporte_particular,
                            "trasporte_taxi": data.alumno.trasporte_taxi,
                            "transporte_otro": data.alumno.transporte_otro, 
                            "hijas_hijos_menores_3": data.alumno.hijos_menores,
                            "sala_maternales": data.alumno.asisten_maternal,
                            "acompanante_externo": data.alumno.inscripcion_asistente_externo,
                            "proyecto_inclusion": data.alumno.inscripcion_inclusion,
                            "cec": data.alumno.complementario_centro_educativo,
                            "cef": data.alumno.complementario_educacion_fisica,
                            "escuela_estetica": data.complementario_educacion_estetica,
                        };

                        let entries = Object.entries(fields);
                        let index = 0;
                        while (index < entries.length) {
                            const [fieldName, fieldValue] = entries[index];
                            if (fieldValue !== null && fieldValue !== undefined && fieldValue !== 'NO') {
                                let checkbox = document.querySelector(`input[name="${fieldName}"][value="SI"], input[name="${fieldName}"][value="Si"]`);
                                if (checkbox && typeof checkbox.checked !== 'undefined') {
                                    checkbox.checked = fieldValue === 'SI';
                                }
                            }
                            index++;
                        }

                        const actividadesResponsable2 = {
                            "Estudia": data.responsable2.responsable2_actividad_estudia,
                            "Trabaja": data.responsable2.responsable2_actividad_trabaja,
                            "Busca trabajo": data.responsable2.responsable2_actividad_busca_trabajo,
                            "Realiza tareas de cuidado no pagas": data.responsable2.responsable2_actividad_cuidado_no_pago,
                            "Recibe jubilacion o pensión": data.responsable2.responsable2_actividad_recibe_jubilacion
                        };

                        Object.entries(actividadesResponsable2).forEach(([actividad, valor]) => {
                            if (valor) {
                                const checkbox = document.querySelector(`input[name="responsable_2_actividad_${actividad.toLowerCase().replace(/ /g, '_')}"][value="${actividad}"]`);
                                if (checkbox) {
                                    checkbox.checked = true;
                                }
                            }
                        });


                        
                        const responsable_2_nivel_mas_alto = data.responsable2.responsable2_nivel_maximo_estudio;
                        if (responsable_2_nivel_mas_alto) {
                            const responsable_2_nivel_mas_altoRadio = document.querySelector(`input[name="responsable_2_nivel_mas_alto"][value="${responsable_2_nivel_mas_alto}"]`);
                            if (responsable_2_nivel_mas_altoRadio) {
                                responsable_2_nivel_mas_altoRadio.checked = true;
                            }
                        }

                        // DNI argentino
                        const responsable2dni = data.responsable2.responsable2_dni_argentino;
                        if (responsable2dni) {
                            const responsable2dniRadio = document.querySelector(`input[name="responsable_2_dni_argentino"][value="${responsable2dni}"]`);
                            if (responsable2dniRadio) {
                                responsable2dniRadio.checked = true;
                            }
                        }

                        // Vinculo responsable
                        const responsable2vinculo = data.responsable2.responsable2_vinculo;
                        if (responsable2vinculo) {
                            const responsable2vinculoRadio = document.querySelector(`input[name="responsable_2_vinculo"][value="${responsable2vinculo}"]`);
                            if (responsable2vinculoRadio) {
                                responsable2vinculoRadio.checked = true;
                            }
                        }


                        const actividadesResponsable1 = {
                            "Estudia": data.responsable1.responsable1_actividad_estudia,
                            "Trabaja": data.responsable1.responsable1_actividad_trabaja,
                            "Busca trabajo": data.responsable1.responsable1_actividad_busca_trabajo,
                            "Realiza tareas de cuidado no pagas": data.responsable1.responsable1_actividad_cuidado_no_pago,
                            "Recibe jubilacion o pensión": data.responsable1.responsable1_actividad_recibe_jubilacion
                        };

                        Object.entries(actividadesResponsable1).forEach(([actividad, valor]) => {
                            if (valor) {
                                const checkbox = document.querySelector(`input[name="responsable_1_actividad_${actividad.toLowerCase().replace(/ /g, '_')}"][value="${actividad}"]`);
                                if (checkbox) {
                                    checkbox.checked = true;
                                }
                            }
                        });

            
                        
                        const responsable_1_nivel_mas_alto = data.responsable1.responsable1_nivel_maximo_estudio;
                        if (responsable_1_nivel_mas_alto) {
                            const responsable_1_nivel_mas_altoRadio = document.querySelector(`input[name="responsable_1_nivel_mas_alto"][value="${responsable_1_nivel_mas_alto}"]`);
                            if (responsable_1_nivel_mas_altoRadio) {
                                responsable_1_nivel_mas_altoRadio.checked = true;
                            }
                        }

                        // DNI argentino
                        const responsable1dni = data.responsable1.responsable1_dni_argentino;
                        if (responsable1dni) {
                            const responsable1dniRadio = document.querySelector(`input[name="responsable_1_dni_argentino"][value="${responsable1dni}"]`);
                            if (responsable1dniRadio) {
                                responsable1dniRadio.checked = true;
                            }
                        }
        
                        // Vinculo responsable
                        const responsable1vinculo = data.responsable1.responsable1_vinculo;
                        if (responsable1vinculo) {
                            const responsable1vinculoRadio = document.querySelector(`input[name="responsable_1_vinculo"][value="${responsable1vinculo}"]`);
                            if (responsable1vinculoRadio) {
                                responsable1vinculoRadio.checked = true;
                            }
                        }

                        // Establecer el valor del DNI argentino y lugar de nacimiento basado en la respuesta de la base de datos
                        const dniArgentinoValue = data.alumno.tiene_dni_argentino;
                        if (dniArgentinoValue) {
                            const dniArgentinoRadio = document.querySelector(`input[name="dni_argentino"][value="${dniArgentinoValue}"]`);
                            if (dniArgentinoRadio) {
                                dniArgentinoRadio.checked = true;
                            }
                        }

                        const tieneHermanosValue = data.alumno.tiene_hermanos;
                        if (tieneHermanosValue) {
                            const tieneHermanosRadio = document.querySelector(`input[name="hermanos"][value="${tieneHermanosValue}"]`);
                            if (tieneHermanosRadio) {
                                tieneHermanosRadio.checked = true;
                            }
                        }

                        const identidadGeneroValue = data.alumno.identidad_genero;
                        if (identidadGeneroValue) {
                            const identidadGeneroRadio = document.querySelector(`input[name="identidad_genero"][value="${identidadGeneroValue}"]`);
                            if (identidadGeneroRadio) {
                                identidadGeneroRadio.checked = true;
                            }
                        }

                        const provinciaArgentinaValue = data.alumno.provincia_nacimiento;
                        if (provinciaArgentinaValue) {
                            const provinciaArgentinaRadio = document.querySelector(`input[name="provincia_argentina"][value="${provinciaArgentinaValue}"]`);
                            if (provinciaArgentinaRadio) {
                                provinciaArgentinaRadio.checked = true;
                            }
                        }

                        const lugarNacimientoValue = data.alumno.lugar_nacimiento;
                        if (lugarNacimientoValue) {
                            const lugarNacimientoRadio = document.querySelector(`input[name="lugar_nacimiento"][value="${lugarNacimientoValue}"]`);
                            if (lugarNacimientoRadio) {
                                lugarNacimientoRadio.checked = true;
                            }
                        }

                        const gestionValue = data.alumno.establecimiento_actual_gestion;
                        if (gestionValue) {
                            const gestionRadio = document.querySelector(`input[name="datos_establecimiento_gestion"][value="${gestionValue}"]`);
                            if (gestionRadio) {
                                gestionRadio.checked = true;
                            }
                        }

                        const condicionInscripcionValue = data.alumno.inscripcion_modalidad;
                        if (condicionInscripcionValue) {
                            const condicionInscripcionRadio = document.querySelector(`input[name="inscripcion_ciclo"][value="${condicionInscripcionValue}"]`);
                            if (condicionInscripcionRadio) {
                                condicionInscripcionRadio.checked = true;
                            }
                        }

                        const turnoSolicitadoValue = data.alumno.inscripcion_turno;
                        if (turnoSolicitadoValue) {
                            const turnoSolicitadoRadio = document.querySelector(`input[name="turno_solicitado"][value="${turnoSolicitadoValue}"]`);
                            if (turnoSolicitadoRadio) {
                                turnoSolicitadoRadio.checked = true;
                            }
                        }

                        const jornadaValue = data.alumno.inscripcion_jornada;
                        if (jornadaValue) {
                            const jornadaRadio = document.querySelector(`input[name="jornada"][value="${jornadaValue}"]`);
                            if (jornadaRadio) {
                                jornadaRadio.checked = true;
                            }
                        }

                        const anoValue = data.alumno.inscripcion_año;
                        if (anoValue) {
                            const anoRadio = document.querySelector(`input[name="ano"][value="${anoValue}"]`);
                            if (anoRadio) {
                                anoRadio.checked = true;
                            }
                        }

                        const condicionInscripcionestablecimientoValue = data.alumno.inscripcion_condicion;
                        if (condicionInscripcionestablecimientoValue) {
                            const condicionInscripcionestablecimientoRadio = document.querySelector(`input[name="condicion_inscripcion"][value="${condicionInscripcionestablecimientoValue}"]`);
                            if (condicionInscripcionestablecimientoRadio) {
                                condicionInscripcionestablecimientoRadio.checked = true;
                            }
                        }

                        const proyectoInclusionValue = data.alumno.tipo_inclusion;
                        if (proyectoInclusionValue) {
                            const proyectoInclusionRadio = document.querySelector(`input[name="acompanamiento_inclusion"][value="${proyectoInclusionValue}"]`);
                            if (proyectoInclusionRadio) {
                                proyectoInclusionRadio.checked = true;
                            }
                        }

                        const establecimientoProcedenciaValue = data.alumno.establecimiento_procedencia_pais;
                        if (establecimientoProcedenciaValue) {
                            const establecimientoProcedenciaRadio = document.querySelector(`input[name="Pais"][value="${establecimientoProcedenciaValue}"]`);
                            if (establecimientoProcedenciaRadio) {
                                establecimientoProcedenciaRadio.checked = true;
                            }
                        }

                        const establecimientoProcedenciaProvinciaValue = data.alumno.establecimiento_procedencia_provincia;
                        if (establecimientoProcedenciaProvinciaValue) {
                            const establecimientoProcedenciaProvinciaRadio = document.querySelector(`input[name="Provincia"][value="${establecimientoProcedenciaProvinciaValue}"]`);
                            if (establecimientoProcedenciaProvinciaRadio) {
                                establecimientoProcedenciaProvinciaRadio.checked = true;
                            }
                        }

                        const establecimientoProcedenciaGestionValue = data.alumno.establecimiento_procedencia_gestion;
                        if (establecimientoProcedenciaGestionValue) {
                            const establecimientoProcedenciaGestionRadio = document.querySelector(`input[name="GESTIONDOS"][value="${establecimientoProcedenciaGestionValue}"]`);
                            if (establecimientoProcedenciaGestionRadio) {
                                establecimientoProcedenciaGestionRadio.checked = true;
                            }
                        }

                        const establecimientoProcedenciaDependenciaValue = data.alumno.establecimiento_procedencia_dependencia;
                        if (establecimientoProcedenciaDependenciaValue) {
                            const establecimientoProcedenciaDependenciaRadio = document.querySelector(`input[name="Dependencia"][value="${establecimientoProcedenciaDependenciaValue}"]`);
                            if (establecimientoProcedenciaDependenciaRadio) {
                                establecimientoProcedenciaDependenciaRadio.checked = true;
                            }
                        }

                        const servicioAlimentarioValue = data.alumno.servicio_alimentario;
                        if (servicioAlimentarioValue) {
                            const servicioAlimentarioRadio = document.querySelector(`input[name="servicio_alimentario"][value="${servicioAlimentarioValue}"]`);
                            if (servicioAlimentarioRadio) {
                                servicioAlimentarioRadio.checked = true;
                            }
                        }

                    } catch (error) {
                        console.error(`Error al procesar los datos: ${error.message}`);
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
