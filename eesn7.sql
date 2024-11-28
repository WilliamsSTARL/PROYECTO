-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 17:46:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eesn7`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorizacion_imagen`
--

CREATE TABLE `autorizacion_imagen` (
  `id` int(11) NOT NULL,
  `NombreHijo` varchar(255) NOT NULL,
  `DNI_Hijo` varchar(20) NOT NULL,
  `FirmaTutor` varchar(255) NOT NULL,
  `Aclaracion` varchar(255) NOT NULL,
  `DNI_Tutor` varchar(20) NOT NULL,
  `Lugar` varchar(255) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autorizacion_imagen`
--

INSERT INTO `autorizacion_imagen` (`id`, `NombreHijo`, `DNI_Hijo`, `FirmaTutor`, `Aclaracion`, `DNI_Tutor`, `Lugar`, `Fecha`) VALUES
(4, 'Ricky Flores', '12345345', '_9687d469-9b07-42e0-a2c2-db60b69f705a.jpg', 'Padre', '12345343', 'Teresita', '2024-09-28'),
(7, 'Eduardo Clasmerdeles', '111111', '4.jpg', 'Padre', '767676', 'Santa Teresita', '2024-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `ID` int(3) NOT NULL,
  `CURSO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`ID`, `CURSO`) VALUES
(1, '1ero'),
(2, '2ndo'),
(3, '3ero'),
(4, '4to'),
(5, '5to'),
(6, '6to');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `division`
--

CREATE TABLE `division` (
  `id` int(11) NOT NULL,
  `nombre_division` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `division`
--

INSERT INTO `division` (`id`, `nombre_division`) VALUES
(1, '1era'),
(2, '2nda'),
(3, '3era'),
(4, '4ta'),
(5, '5ta'),
(6, '6ta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_anexo`
--

CREATE TABLE `estado_anexo` (
  `id` int(11) NOT NULL,
  `fk_alumno` int(11) DEFAULT NULL,
  `anexo_1` varchar(255) DEFAULT NULL,
  `anexo_2` varchar(255) DEFAULT NULL,
  `anexo_3` varchar(255) DEFAULT NULL,
  `anexo_4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_anexo`
--

INSERT INTO `estado_anexo` (`id`, `fk_alumno`, `anexo_1`, `anexo_2`, `anexo_3`, `anexo_4`) VALUES
(1, 1, NULL, 'si', NULL, NULL),
(2, NULL, NULL, 'si', NULL, NULL),
(3, NULL, NULL, 'si', NULL, NULL),
(4, NULL, NULL, 'si', NULL, NULL),
(5, NULL, NULL, 'si', NULL, NULL),
(6, NULL, NULL, 'si', NULL, NULL),
(7, NULL, NULL, 'si', NULL, NULL),
(8, NULL, NULL, 'si', NULL, NULL),
(9, NULL, NULL, 'si', NULL, NULL),
(10, NULL, NULL, 'si', NULL, NULL),
(11, NULL, NULL, 'si', NULL, NULL),
(12, NULL, NULL, 'si', NULL, NULL),
(13, NULL, NULL, 'si', NULL, NULL),
(14, NULL, NULL, 'si', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_inscripcion`
--

CREATE TABLE `ficha_inscripcion` (
  `id` int(11) NOT NULL,
  `nombre_alumno` varchar(100) DEFAULT NULL,
  `apellido_alumno` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `tiene_dni_argentino` varchar(30) DEFAULT NULL,
  `nro_dni_argentino` int(11) DEFAULT NULL,
  `cuil_alumno` varchar(20) DEFAULT NULL,
  `posee_cpi` varchar(3) DEFAULT NULL,
  `tipo_documento_extranjero` varchar(20) DEFAULT NULL,
  `nro_documento_extranjero` varchar(20) DEFAULT NULL,
  `identidad_genero` varchar(15) DEFAULT NULL,
  `calle` varchar(20) DEFAULT NULL,
  `nro_calle` varchar(10) DEFAULT NULL,
  `piso_torre` varchar(15) DEFAULT NULL,
  `entre_calles` varchar(20) DEFAULT NULL,
  `otro_dato` varchar(30) DEFAULT NULL,
  `provincia_actual` varchar(20) DEFAULT NULL,
  `distrito` varchar(20) DEFAULT NULL,
  `localidad` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `telefono_celular` varchar(30) DEFAULT NULL,
  `lugar_nacimiento` varchar(20) DEFAULT NULL,
  `nacionalidad` varchar(20) DEFAULT NULL,
  `provincia_nacimiento` varchar(20) DEFAULT NULL,
  `distrito_BA` varchar(20) DEFAULT NULL,
  `localidad_BA` varchar(20) DEFAULT NULL,
  `tiene_hermanos` varchar(3) DEFAULT NULL,
  `cantidad_hermanos` int(11) DEFAULT NULL,
  `habla_lengua_indigena` varchar(3) DEFAULT NULL,
  `habla_otras_lenguas` varchar(3) DEFAULT NULL,
  `descendiente_originario` varchar(3) DEFAULT NULL,
  `percibe_auh` varchar(3) DEFAULT NULL,
  `percibe_progresar` varchar(3) DEFAULT NULL,
  `trasporte_pie_bicicleta` varchar(3) DEFAULT NULL,
  `trasporte_escolar` varchar(3) DEFAULT NULL,
  `trasporte_colectivo` varchar(3) DEFAULT NULL,
  `trasporte_tren` varchar(3) DEFAULT NULL,
  `trasporte_particular` varchar(3) DEFAULT NULL,
  `trasporte_taxi` varchar(3) DEFAULT NULL,
  `transporte_otro` varchar(3) DEFAULT NULL,
  `hijos_menores` varchar(3) DEFAULT NULL,
  `asisten_maternal` varchar(3) DEFAULT NULL,
  `tiene_obra_social` varchar(3) DEFAULT NULL,
  `nombre_obra_social` varchar(30) DEFAULT NULL,
  `nro_afiliado` varchar(3) DEFAULT NULL,
  `antecedente_asma` varchar(3) DEFAULT NULL,
  `antecedente_celiaquia` varchar(3) DEFAULT NULL,
  `antecedente_cardiaco` varchar(3) DEFAULT NULL,
  `antecedente_diabetes` varchar(3) DEFAULT NULL,
  `antecedente_presion_alta` varchar(3) DEFAULT NULL,
  `antecedente_convulsiones` varchar(3) DEFAULT NULL,
  `antecedente_alteracion_sanguinea` varchar(3) DEFAULT NULL,
  `antecedente_quemaduras_graves` varchar(3) DEFAULT NULL,
  `antecedente_organos` varchar(3) DEFAULT NULL,
  `antecedente_oncologico` varchar(3) DEFAULT NULL,
  `antecedente_inmunodeficiencia` varchar(3) DEFAULT NULL,
  `antecedente_fracturas` varchar(3) DEFAULT NULL,
  `antecedente_huesos` varchar(3) DEFAULT NULL,
  `antecedente_traumatismos` varchar(3) DEFAULT NULL,
  `antecedente_problemas_piel` varchar(3) DEFAULT NULL,
  `ejercicio_desmayo` varchar(3) DEFAULT NULL,
  `ejercicio_dolor_pecho` varchar(3) DEFAULT NULL,
  `ejercicio_mareos` varchar(3) DEFAULT NULL,
  `ejercicio_mayor_cansancio` varchar(3) DEFAULT NULL,
  `ejercicio_palpitaciones` varchar(3) DEFAULT NULL,
  `ejercicio_dificultad_respirar` varchar(3) DEFAULT NULL,
  `internacion_comun` varchar(3) DEFAULT NULL,
  `internacion_intensiva` varchar(3) DEFAULT NULL,
  `cant_veces_internado` int(11) DEFAULT NULL,
  `causa_internacion` text DEFAULT NULL,
  `antecedente_alergia_grave` varchar(3) DEFAULT NULL,
  `alergia_medicamento` varchar(3) DEFAULT NULL,
  `internacion_medicamento` varchar(3) DEFAULT NULL,
  `alergia_vacuna` varchar(3) DEFAULT NULL,
  `internacion_vacuna` varchar(3) DEFAULT NULL,
  `alergia_alimento` varchar(3) DEFAULT NULL,
  `internacion_alimento` varchar(3) DEFAULT NULL,
  `alergia_insectos` varchar(3) DEFAULT NULL,
  `internacion_insecto` varchar(3) DEFAULT NULL,
  `alergia_estacional` varchar(3) DEFAULT NULL,
  `internacion_estacional` varchar(3) DEFAULT NULL,
  `alergia_otras` varchar(3) DEFAULT NULL,
  `internacion_otras` varchar(3) DEFAULT NULL,
  `disminucion_auditiva` varchar(3) DEFAULT NULL,
  `usa_audifonos` varchar(3) DEFAULT NULL,
  `disminucion_visual` varchar(3) DEFAULT NULL,
  `usa_lentes` varchar(3) DEFAULT NULL,
  `recibe_medicacion` varchar(3) DEFAULT NULL,
  `tipo_medicacion` text DEFAULT NULL,
  `recibio_operacion` varchar(3) DEFAULT NULL,
  `motivo_operacion` text DEFAULT NULL,
  `fecha_operacion` date DEFAULT NULL,
  `antecedente_fam_muerte_subita` varchar(3) DEFAULT NULL,
  `antecedente_fam_diabetes` varchar(3) DEFAULT NULL,
  `antecedente_fam_cardiacos` varchar(3) DEFAULT NULL,
  `antecedente_fam_tos_cronica` varchar(3) DEFAULT NULL,
  `antecedente_fam_celiaco` varchar(3) DEFAULT NULL,
  `establecimiento_actual_distrito` varchar(30) DEFAULT NULL,
  `establecimiento_actual_nombre` varchar(20) DEFAULT NULL,
  `establecimiento_actual_nro` varchar(20) DEFAULT NULL,
  `establecimiento_actual_gestion` varchar(20) DEFAULT NULL,
  `establecimiento_procedencia_pais` varchar(20) DEFAULT NULL,
  `establecimiento_procedencia_provincia` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_distrito` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_modalidad` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_gestion` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_dependencia` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_nombre` varchar(30) DEFAULT NULL,
  `establecimiento_procedencia_nro` varchar(30) DEFAULT NULL,
  `inscripcion_modalidad` varchar(30) DEFAULT NULL,
  `inscripcion_orientacion` varchar(30) DEFAULT NULL,
  `inscripcion_turno` varchar(30) DEFAULT NULL,
  `inscripcion_jornada` varchar(30) DEFAULT NULL,
  `inscripcion_año` varchar(15) DEFAULT NULL,
  `inscripcion_condicion` varchar(20) DEFAULT NULL,
  `inscripcion_inclusion` varchar(30) DEFAULT NULL,
  `tipo_inclusion` text DEFAULT NULL,
  `inscripcion_asistente_externo` varchar(3) DEFAULT NULL,
  `complementario_centro_educativo` varchar(3) DEFAULT NULL,
  `complementario_educacion_fisica` varchar(3) DEFAULT NULL,
  `complementario_educacion_estetica` varchar(3) DEFAULT NULL,
  `servicio_alimentario` varchar(100) DEFAULT NULL,
  `url_firma_responsable` varchar(100) DEFAULT NULL,
  `aclaracion_firma` varchar(100) DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha_inscripcion`
--

INSERT INTO `ficha_inscripcion` (`id`, `nombre_alumno`, `apellido_alumno`, `fecha_nacimiento`, `tiene_dni_argentino`, `nro_dni_argentino`, `cuil_alumno`, `posee_cpi`, `tipo_documento_extranjero`, `nro_documento_extranjero`, `identidad_genero`, `calle`, `nro_calle`, `piso_torre`, `entre_calles`, `otro_dato`, `provincia_actual`, `distrito`, `localidad`, `telefono`, `telefono_celular`, `lugar_nacimiento`, `nacionalidad`, `provincia_nacimiento`, `distrito_BA`, `localidad_BA`, `tiene_hermanos`, `cantidad_hermanos`, `habla_lengua_indigena`, `habla_otras_lenguas`, `descendiente_originario`, `percibe_auh`, `percibe_progresar`, `trasporte_pie_bicicleta`, `trasporte_escolar`, `trasporte_colectivo`, `trasporte_tren`, `trasporte_particular`, `trasporte_taxi`, `transporte_otro`, `hijos_menores`, `asisten_maternal`, `tiene_obra_social`, `nombre_obra_social`, `nro_afiliado`, `antecedente_asma`, `antecedente_celiaquia`, `antecedente_cardiaco`, `antecedente_diabetes`, `antecedente_presion_alta`, `antecedente_convulsiones`, `antecedente_alteracion_sanguinea`, `antecedente_quemaduras_graves`, `antecedente_organos`, `antecedente_oncologico`, `antecedente_inmunodeficiencia`, `antecedente_fracturas`, `antecedente_huesos`, `antecedente_traumatismos`, `antecedente_problemas_piel`, `ejercicio_desmayo`, `ejercicio_dolor_pecho`, `ejercicio_mareos`, `ejercicio_mayor_cansancio`, `ejercicio_palpitaciones`, `ejercicio_dificultad_respirar`, `internacion_comun`, `internacion_intensiva`, `cant_veces_internado`, `causa_internacion`, `antecedente_alergia_grave`, `alergia_medicamento`, `internacion_medicamento`, `alergia_vacuna`, `internacion_vacuna`, `alergia_alimento`, `internacion_alimento`, `alergia_insectos`, `internacion_insecto`, `alergia_estacional`, `internacion_estacional`, `alergia_otras`, `internacion_otras`, `disminucion_auditiva`, `usa_audifonos`, `disminucion_visual`, `usa_lentes`, `recibe_medicacion`, `tipo_medicacion`, `recibio_operacion`, `motivo_operacion`, `fecha_operacion`, `antecedente_fam_muerte_subita`, `antecedente_fam_diabetes`, `antecedente_fam_cardiacos`, `antecedente_fam_tos_cronica`, `antecedente_fam_celiaco`, `establecimiento_actual_distrito`, `establecimiento_actual_nombre`, `establecimiento_actual_nro`, `establecimiento_actual_gestion`, `establecimiento_procedencia_pais`, `establecimiento_procedencia_provincia`, `establecimiento_procedencia_distrito`, `establecimiento_procedencia_modalidad`, `establecimiento_procedencia_gestion`, `establecimiento_procedencia_dependencia`, `establecimiento_procedencia_nombre`, `establecimiento_procedencia_nro`, `inscripcion_modalidad`, `inscripcion_orientacion`, `inscripcion_turno`, `inscripcion_jornada`, `inscripcion_año`, `inscripcion_condicion`, `inscripcion_inclusion`, `tipo_inclusion`, `inscripcion_asistente_externo`, `complementario_centro_educativo`, `complementario_educacion_fisica`, `complementario_educacion_estetica`, `servicio_alimentario`, `url_firma_responsable`, `aclaracion_firma`, `fecha_inscripcion`) VALUES
(1, 'Martina', 'Vila', '2024-11-22', 'Si, y tiene el DNI fisico', 2345423, '2345', 'SI', '25345', '2345', 'Mujer', 'asdf', '2345', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '', '2345423', 'Argentina', 'asdf', 'Buenos Aires', 'asdf', 'asdf', 'SI', 343, 'SI', 'SI', 'SI', 'SI', 'SI', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'SI', 'SI', 'SI', 'asdf', '234', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 0, 'asdf', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'SI', 'asdf', 'SI', 'asdf', '1970-01-01', 'SI', '', 'SI', 'SI', 'SI', 'asdf', 'asdf', '2345', 'Estatal', 'Argentina', 'Buenos Aires', 'asdf', 'asdf', 'Estatal', 'Oficial', 'asdf', '2345', 'Ciclo Basico', 'asdf', 'Mañana', 'Simple', '3', 'Ingresante', 'SI', 'No Concurre', 'SI', 'SI', '', '', 'Comedor', 'No especificado', '', '1970-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jerarquia_usuario`
--

CREATE TABLE `jerarquia_usuario` (
  `id` int(11) NOT NULL,
  `jerarquia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jerarquia_usuario`
--

INSERT INTO `jerarquia_usuario` (`id`, `jerarquia`) VALUES
(1, 'Admin'),
(2, 'Director'),
(3, 'Preceptor'),
(4, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legajo_alumno`
--

CREATE TABLE `legajo_alumno` (
  `id` int(11) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tutor` varchar(255) DEFAULT NULL,
  `curso` int(3) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `ficha_inscripcion` enum('SI','NO') DEFAULT NULL,
  `dni_alumno` enum('SI','NO') DEFAULT NULL,
  `cuil_alumno` enum('SI','NO') DEFAULT NULL,
  `certificado_nacimiento` enum('SI','NO') DEFAULT NULL,
  `ficha_salud` enum('SI','NO') DEFAULT NULL,
  `vacunas` enum('SI','NO') DEFAULT NULL,
  `certificado_salud` enum('SI','NO') DEFAULT NULL,
  `certificado_oftalmologico` enum('SI','NO') DEFAULT NULL,
  `dni_tutor` enum('SI','NO') DEFAULT NULL,
  `certificado_aprobacion` enum('SI','NO') DEFAULT NULL,
  `otros` enum('SI','NO') DEFAULT NULL,
  `Fecha_nacimiento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Lugar` varchar(70) NOT NULL,
  `Division` int(1) NOT NULL,
  `Odontologico` varchar(3) NOT NULL,
  `PASE` varchar(3) NOT NULL,
  `AImagen` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_alumnos`
--

CREATE TABLE `lista_alumnos` (
  `id_alumno` int(11) NOT NULL,
  `dni` int(10) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tutor_a_cargo` varchar(255) DEFAULT NULL,
  `curso` varchar(3) NOT NULL,
  `division` varchar(18) NOT NULL,
  `turno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lista_alumnos`
--

INSERT INTO `lista_alumnos` (`id_alumno`, `dni`, `nombre`, `apellido`, `domicilio`, `localidad`, `telefono`, `tutor_a_cargo`, `curso`, `division`, `turno`) VALUES
(1, 552345, 'Martina', 'Vila', '45 78', '1', '1234321324', 'afsddfsafads', '3', '4', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `ID` int(3) NOT NULL,
  `LOCALIDAD` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`ID`, `LOCALIDAD`) VALUES
(1, 'Santa Teresita'),
(2, 'Las Toninas'),
(3, 'Mar del Tuyu'),
(4, 'Costa del Este'),
(5, 'Mar de Ajo'),
(6, 'San Clemente'),
(7, 'San Bernardo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable_1_alumno`
--

CREATE TABLE `responsable_1_alumno` (
  `id` int(11) NOT NULL,
  `fk_alumno` int(11) NOT NULL,
  `responsable1_vinculo` varchar(40) DEFAULT NULL,
  `responsable1_apellido` varchar(50) DEFAULT NULL,
  `responsable1_nombre` varchar(50) DEFAULT NULL,
  `responsable1_nacionalidad` varchar(30) DEFAULT NULL,
  `responsable1_dni_argentino` text DEFAULT NULL,
  `responsable1_nro_dni_argentino` varchar(30) DEFAULT NULL,
  `responsable1_posee_CPI` varchar(3) DEFAULT NULL,
  `responsable1_tipo_documento` varchar(30) DEFAULT NULL,
  `responsable1_nro_documento` varchar(30) DEFAULT NULL,
  `responsable1_profesion` varchar(30) DEFAULT NULL,
  `responsable1_estudio` varchar(3) DEFAULT NULL,
  `responsable1_nivel_maximo_estudio` varchar(30) DEFAULT NULL,
  `responsable1_finalizo_nivel` varchar(3) DEFAULT NULL,
  `responsable1_actividad_estudia` varchar(50) DEFAULT NULL,
  `responsable1_actividad_trabaja` varchar(50) DEFAULT NULL,
  `responsable1_actividad_busca_trabajo` varchar(50) DEFAULT NULL,
  `responsable1_actividad_cuidado_no_pago` varchar(50) DEFAULT NULL,
  `responsable1_actividad_recibe_jubilacion` varchar(50) DEFAULT NULL,
  `responsable1_convive_con_estudiante` varchar(3) DEFAULT NULL,
  `responsable1_domicilio_calle` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_nro` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_piso` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_entre_calles` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_otro_dato` text DEFAULT NULL,
  `responsable1_domicilio_provincia` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_distrito` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_localidad` varchar(30) DEFAULT NULL,
  `responsable1_domicilio_telefono` varchar(30) DEFAULT NULL,
  `responsable1_telefono_celular` varchar(30) DEFAULT NULL,
  `responsable1_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `responsable_1_alumno`
--

INSERT INTO `responsable_1_alumno` (`id`, `fk_alumno`, `responsable1_vinculo`, `responsable1_apellido`, `responsable1_nombre`, `responsable1_nacionalidad`, `responsable1_dni_argentino`, `responsable1_nro_dni_argentino`, `responsable1_posee_CPI`, `responsable1_tipo_documento`, `responsable1_nro_documento`, `responsable1_profesion`, `responsable1_estudio`, `responsable1_nivel_maximo_estudio`, `responsable1_finalizo_nivel`, `responsable1_actividad_estudia`, `responsable1_actividad_trabaja`, `responsable1_actividad_busca_trabajo`, `responsable1_actividad_cuidado_no_pago`, `responsable1_actividad_recibe_jubilacion`, `responsable1_convive_con_estudiante`, `responsable1_domicilio_calle`, `responsable1_domicilio_nro`, `responsable1_domicilio_piso`, `responsable1_domicilio_entre_calles`, `responsable1_domicilio_otro_dato`, `responsable1_domicilio_provincia`, `responsable1_domicilio_distrito`, `responsable1_domicilio_localidad`, `responsable1_domicilio_telefono`, `responsable1_telefono_celular`, `responsable1_email`) VALUES
(6, 1, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', 'Pasaporte', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'NO', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(19, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(20, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(21, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(22, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(23, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(24, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(25, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(26, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(27, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(28, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(29, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(30, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(31, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(32, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs'),
(33, 0, 'Padre', 'asdf', 'asdf', 'asdf', 'SI', '2354', 'SI', '', '212121', 'xcasdfasdf', 'SI', 'Primario', 'SI', 'Estudia', 'Trabaja', 'Busca trabajo', 'NO', 'NO', 'SI', 'asdf', '2345', 'afds', 'adfs', 'asdf', 'asdf', 'asdf', 'asdf', '12341234', '1234134', 'asdfffs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsable_2_alumno`
--

CREATE TABLE `responsable_2_alumno` (
  `id` int(11) NOT NULL,
  `fk_alumno` int(11) NOT NULL,
  `responsable2_vinculo` varchar(40) DEFAULT NULL,
  `responsable2_apellido` varchar(50) DEFAULT NULL,
  `responsable2_nombre` varchar(50) DEFAULT NULL,
  `responsable2_nacionalidad` varchar(30) DEFAULT NULL,
  `responsable2_dni_argentino` text DEFAULT NULL,
  `responsable2_nro_dni_argentino` varchar(30) DEFAULT NULL,
  `responsable2_posee_CPI` varchar(3) DEFAULT NULL,
  `responsable2_tipo_documento` varchar(30) DEFAULT NULL,
  `responsable2_nro_documento` varchar(30) DEFAULT NULL,
  `responsable2_profesion` varchar(30) DEFAULT NULL,
  `responsable2_estudio` varchar(3) DEFAULT NULL,
  `responsable2_nivel_maximo_estudio` varchar(30) DEFAULT NULL,
  `responsable2_finalizo_nivel` varchar(3) DEFAULT NULL,
  `responsable2_actividad_estudia` varchar(3) DEFAULT NULL,
  `responsable2_actividad_trabaja` varchar(3) DEFAULT NULL,
  `responsable2_actividad_busca_trabajo` varchar(3) DEFAULT NULL,
  `responsable2_actividad_cuidado_no_pago` varchar(3) DEFAULT NULL,
  `responsable2_actividad_recibe_jubilacion` varchar(3) DEFAULT NULL,
  `responsable2_convive_con_estudiante` varchar(3) DEFAULT NULL,
  `responsable2_domicilio_calle` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_nro` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_piso` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_entre_calles` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_otro_dato` text DEFAULT NULL,
  `responsable2_domicilio_provincia` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_distrito` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_localidad` varchar(30) DEFAULT NULL,
  `responsable2_domicilio_telefono` varchar(30) DEFAULT NULL,
  `responsable2_telefono_celular` varchar(30) DEFAULT NULL,
  `responsable2_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `responsable_2_alumno`
--

INSERT INTO `responsable_2_alumno` (`id`, `fk_alumno`, `responsable2_vinculo`, `responsable2_apellido`, `responsable2_nombre`, `responsable2_nacionalidad`, `responsable2_dni_argentino`, `responsable2_nro_dni_argentino`, `responsable2_posee_CPI`, `responsable2_tipo_documento`, `responsable2_nro_documento`, `responsable2_profesion`, `responsable2_estudio`, `responsable2_nivel_maximo_estudio`, `responsable2_finalizo_nivel`, `responsable2_actividad_estudia`, `responsable2_actividad_trabaja`, `responsable2_actividad_busca_trabajo`, `responsable2_actividad_cuidado_no_pago`, `responsable2_actividad_recibe_jubilacion`, `responsable2_convive_con_estudiante`, `responsable2_domicilio_calle`, `responsable2_domicilio_nro`, `responsable2_domicilio_piso`, `responsable2_domicilio_entre_calles`, `responsable2_domicilio_otro_dato`, `responsable2_domicilio_provincia`, `responsable2_domicilio_distrito`, `responsable2_domicilio_localidad`, `responsable2_domicilio_telefono`, `responsable2_telefono_celular`, `responsable2_email`) VALUES
(19, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(20, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(21, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(22, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(23, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(24, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(25, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(26, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(27, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(28, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(29, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(30, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(31, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(32, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', ''),
(33, 0, '', '', '', '', '', '', 'NO', '', '212121', '', '', '', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', 'NO', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restricciones_judiciales`
--

CREATE TABLE `restricciones_judiciales` (
  `id` int(11) NOT NULL,
  `fk_alumno` int(11) NOT NULL,
  `restriccion_nombre` varchar(50) NOT NULL,
  `restriccion_apellido` varchar(50) NOT NULL,
  `restriccion_tipo_documento` varchar(50) NOT NULL,
  `restriccion_nro_documento` int(11) NOT NULL,
  `descripcion_restriccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `turno` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `turno`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usu`
--

CREATE TABLE `usu` (
  `ID` int(7) NOT NULL,
  `DNI` int(8) NOT NULL,
  `CONTRASEÑA` varchar(255) NOT NULL,
  `JERARQUIA` int(1) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usu`
--

INSERT INTO `usu` (`ID`, `DNI`, `CONTRASEÑA`, `JERARQUIA`, `NOMBRE`) VALUES
(18, 4444444, '$2y$10$45EOc7mqKAjEdx.NopszI.cCXRKoLzDU8APZpubFAqQoCJwnsIx96', 2, 'Martina Abigail Vila');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autorizacion_imagen`
--
ALTER TABLE `autorizacion_imagen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_anexo`
--
ALTER TABLE `estado_anexo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ficha_inscripcion`
--
ALTER TABLE `ficha_inscripcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jerarquia_usuario`
--
ALTER TABLE `jerarquia_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `legajo_alumno`
--
ALTER TABLE `legajo_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lista_alumnos`
--
ALTER TABLE `lista_alumnos`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `responsable_1_alumno`
--
ALTER TABLE `responsable_1_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `responsable_2_alumno`
--
ALTER TABLE `responsable_2_alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restricciones_judiciales`
--
ALTER TABLE `restricciones_judiciales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usu`
--
ALTER TABLE `usu`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autorizacion_imagen`
--
ALTER TABLE `autorizacion_imagen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `division`
--
ALTER TABLE `division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_anexo`
--
ALTER TABLE `estado_anexo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ficha_inscripcion`
--
ALTER TABLE `ficha_inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `jerarquia_usuario`
--
ALTER TABLE `jerarquia_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `legajo_alumno`
--
ALTER TABLE `legajo_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_alumnos`
--
ALTER TABLE `lista_alumnos`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `localidad`
--
ALTER TABLE `localidad`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `responsable_1_alumno`
--
ALTER TABLE `responsable_1_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `responsable_2_alumno`
--
ALTER TABLE `responsable_2_alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `restricciones_judiciales`
--
ALTER TABLE `restricciones_judiciales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usu`
--
ALTER TABLE `usu`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
