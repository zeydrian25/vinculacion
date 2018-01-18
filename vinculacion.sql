-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2018 a las 02:02:55
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vinculacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abastecimientoagua`
--

CREATE TABLE `abastecimientoagua` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia`
--

CREATE TABLE `areainfluencia` (
  `id` int(11) NOT NULL,
  `altitud` double DEFAULT NULL,
  `tipoTerrenoDescripcion` text,
  `detalleCalidadAire` text,
  `detalleRuido` text,
  `observacionesEcosistema` text,
  `ManejoAmbiental_id` int(11) NOT NULL,
  `CalidadAire_id` int(11) NOT NULL,
  `TipoTerreno_id` int(11) NOT NULL,
  `TipoSuelo_id` int(11) NOT NULL,
  `CalidadSuelo_id` int(11) NOT NULL,
  `Precipitaciones_id` int(11) NOT NULL,
  `NivelFratico_id` int(11) NOT NULL,
  `PermeabilidadSuelo_id` int(11) NOT NULL,
  `Clima_id` int(11) NOT NULL,
  `CondicionesDrenaje_id` int(11) NOT NULL,
  `Ruido_id` int(11) NOT NULL,
  `RecirculacionAire_id` int(11) NOT NULL,
  `Ecosistema_id` int(11) NOT NULL,
  `OrganizacionSocial_id` int(11) NOT NULL,
  `TendenciaTierra_id` int(11) NOT NULL,
  `AbastecimientoAgua_id` int(11) NOT NULL,
  `EvacuacoinAguaLluvia_id` int(11) NOT NULL,
  `CaracteristicasEtnicas_id` int(11) NOT NULL,
  `ConsolidacionAreaInfluencia_id` int(11) NOT NULL,
  `EvacuacionAguasServidas_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `long` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_lenguaje`
--

CREATE TABLE `areainfluencia_has_lenguaje` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `Lenguaje_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_peligros`
--

CREATE TABLE `areainfluencia_has_peligros` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `Peligros_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_religion`
--

CREATE TABLE `areainfluencia_has_religion` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `Religion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_tipofuentes`
--

CREATE TABLE `areainfluencia_has_tipofuentes` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `TipoFuentes_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_tipovegetal`
--

CREATE TABLE `areainfluencia_has_tipovegetal` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `TipoVegetal_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_topologia`
--

CREATE TABLE `areainfluencia_has_topologia` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `Topologia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_tradicion`
--

CREATE TABLE `areainfluencia_has_tradicion` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `Tradicion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areainfluencia_has_usotierra`
--

CREATE TABLE `areainfluencia_has_usotierra` (
  `AreaInfluencia_id` int(11) NOT NULL,
  `UsoTierra_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociacion`
--

CREATE TABLE `asociacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `personaEncargada` varchar(200) DEFAULT NULL,
  `TipoAsociacion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `biodigestor`
--

CREATE TABLE `biodigestor` (
  `id` int(11) NOT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `tamañoPropiedad` double DEFAULT NULL,
  `cantidadDesechos` double DEFAULT NULL,
  `UnidadProduccion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidadaire`
--

CREATE TABLE `calidadaire` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidadsuelo`
--

CREATE TABLE `calidadsuelo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicasetnicas`
--

CREATE TABLE `caracteristicasetnicas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproyecto`
--

CREATE TABLE `categoriaproyecto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clima`
--

CREATE TABLE `clima` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `mnsm` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicionesdrenaje`
--

CREATE TABLE `condicionesdrenaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consolidacionareainfluencia`
--

CREATE TABLE `consolidacionareainfluencia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ecosistema`
--

CREATE TABLE `ecosistema` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evacuacionaguasservidas`
--

CREATE TABLE `evacuacionaguasservidas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evacuacoinagualluvia`
--

CREATE TABLE `evacuacoinagualluvia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoalimentosproductos`
--

CREATE TABLE `grupoalimentosproductos` (
  `id` int(11) NOT NULL,
  ` nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguaje`
--

CREATE TABLE `lenguaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejoambiental`
--

CREATE TABLE `manejoambiental` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `TipoProyecto_id` int(11) NOT NULL,
  `CategoriaProyecto_id` int(11) NOT NULL,
  `UnidadProduccion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='									';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivelfratico`
--

CREATE TABLE `nivelfratico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizacionsocial`
--

CREATE TABLE `organizacionsocial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `origeningresos`
--

CREATE TABLE `origeningresos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paisaje`
--

CREATE TABLE `paisaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `AreaInfluencia_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peligros`
--

CREATE TABLE `peligros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permeabilidadsuelo`
--

CREATE TABLE `permeabilidadsuelo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos`
--

CREATE TABLE `planriesgos` (
  `id` int(11) NOT NULL,
  `feriaAgricola` char(1) DEFAULT NULL,
  `semillasPropias` char(1) DEFAULT NULL,
  `ConsumoPropio` double DEFAULT NULL,
  `salarioFueraFinca` double DEFAULT NULL,
  `productosGeneradosVendidos` int(11) DEFAULT NULL,
  `TipoAbono_id` int(11) NOT NULL,
  `TipoControlPlaga_id` int(11) NOT NULL,
  `UnidadProduccion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_grupoalimentosproductos`
--

CREATE TABLE `planriesgos_has_grupoalimentosproductos` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `GrupoAlimentosProductos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_origeningresos`
--

CREATE TABLE `planriesgos_has_origeningresos` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `OrigenIngresos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_tipoagricultura`
--

CREATE TABLE `planriesgos_has_tipoagricultura` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `TipoAgricultura_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_tipoalimentos`
--

CREATE TABLE `planriesgos_has_tipoalimentos` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `TipoAlimentos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_tipoalimentosconsumo`
--

CREATE TABLE `planriesgos_has_tipoalimentosconsumo` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `TipoAlimentosConsumo_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_tipoanimales`
--

CREATE TABLE `planriesgos_has_tipoanimales` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `TipoAnimales_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planriesgos_has_tipocultivos`
--

CREATE TABLE `planriesgos_has_tipocultivos` (
  `PlanRiesgos_id` int(11) NOT NULL,
  `TipoCultivos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precipitaciones`
--

CREATE TABLE `precipitaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `TipoProducto_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id` int(11) NOT NULL,
  `ci` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `observaciones` text,
  `genero` char(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recirculacionaire`
--

CREATE TABLE `recirculacionaire` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `religion`
--

CREATE TABLE `religion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruido`
--

CREATE TABLE `ruido` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `UnidadProduccion_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller_has_tipodesecho`
--

CREATE TABLE `taller_has_tipodesecho` (
  `Taller_id` int(11) NOT NULL,
  `TipoDesecho_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller_has_tiporiesgos`
--

CREATE TABLE `taller_has_tiporiesgos` (
  `Taller_id` int(11) NOT NULL,
  `TipoRiesgos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tendenciatierra`
--

CREATE TABLE `tendenciatierra` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoabono`
--

CREATE TABLE `tipoabono` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoagricultura`
--

CREATE TABLE `tipoagricultura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoalimentos`
--

CREATE TABLE `tipoalimentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoalimentosconsumo`
--

CREATE TABLE `tipoalimentosconsumo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoanimales`
--

CREATE TABLE `tipoanimales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `losCria` char(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoasociacion`
--

CREATE TABLE `tipoasociacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocontrolplaga`
--

CREATE TABLE `tipocontrolplaga` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocultivos`
--

CREATE TABLE `tipocultivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodesecho`
--

CREATE TABLE `tipodesecho` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipofuentes`
--

CREATE TABLE `tipofuentes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproyecto`
--

CREATE TABLE `tipoproyecto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='			';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiporiesgos`
--

CREATE TABLE `tiporiesgos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposuelo`
--

CREATE TABLE `tiposuelo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoterreno`
--

CREATE TABLE `tipoterreno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovegetal`
--

CREATE TABLE `tipovegetal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topologia`
--

CREATE TABLE `topologia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `horasTrabajo` int(11) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `PlanRiesgos_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tradicion`
--

CREATE TABLE `tradicion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadproduccion`
--

CREATE TABLE `unidadproduccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL,
  `observaciones` text,
  `Asociacion_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadproduccion_has_propietario`
--

CREATE TABLE `unidadproduccion_has_propietario` (
  `UnidadProduccion_id` int(11) NOT NULL,
  `Propietario_ci` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joel Paredes', 'joelo13p@hotmail.com', '$2y$10$TEgxtgD/3l2iQVH7YrZ4f.NCvvOPD5MnOrEnD3vNHWotnNNGGM.Vu', '2aHgw8MEGRaTEUuy1oPiNPLjQ9KWtghNstoXkqo5oZRHGkKLyAZcyLr7DUTa', '2018-01-18 06:40:28', '2018-01-18 06:40:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usosvegetacion`
--

CREATE TABLE `usosvegetacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usosvegetacion_has_areainfluencia_has_tipovegetal`
--

CREATE TABLE `usosvegetacion_has_areainfluencia_has_tipovegetal` (
  `UsosVegetacion_id` int(11) NOT NULL,
  `AreaInfluencia_has_TipoVegetal_AreaInfluencia_id` int(11) NOT NULL,
  `AreaInfluencia_has_TipoVegetal_TipoVegetal_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usotierra`
--

CREATE TABLE `usotierra` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abastecimientoagua`
--
ALTER TABLE `abastecimientoagua`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areainfluencia`
--
ALTER TABLE `areainfluencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_AreaInfluencia_ManejoAmbiental1_idx` (`ManejoAmbiental_id`),
  ADD KEY `fk_AreaInfluencia_CalidadAire1_idx` (`CalidadAire_id`),
  ADD KEY `fk_AreaInfluencia_TipoTerreno1_idx` (`TipoTerreno_id`),
  ADD KEY `fk_AreaInfluencia_TipoSuelo1_idx` (`TipoSuelo_id`),
  ADD KEY `fk_AreaInfluencia_CalidadSuelo1_idx` (`CalidadSuelo_id`),
  ADD KEY `fk_AreaInfluencia_Precipitaciones1_idx` (`Precipitaciones_id`),
  ADD KEY `fk_AreaInfluencia_NivelFratico1_idx` (`NivelFratico_id`),
  ADD KEY `fk_AreaInfluencia_PermeabilidadSuelo1_idx` (`PermeabilidadSuelo_id`),
  ADD KEY `fk_AreaInfluencia_Clima1_idx` (`Clima_id`),
  ADD KEY `fk_AreaInfluencia_CondicionesDrenaje1_idx` (`CondicionesDrenaje_id`),
  ADD KEY `fk_AreaInfluencia_Ruido1_idx` (`Ruido_id`),
  ADD KEY `fk_AreaInfluencia_RecirculacionAire1_idx` (`RecirculacionAire_id`),
  ADD KEY `fk_AreaInfluencia_Ecosistema1_idx` (`Ecosistema_id`),
  ADD KEY `fk_AreaInfluencia_OrganizacionSocial1_idx` (`OrganizacionSocial_id`),
  ADD KEY `fk_AreaInfluencia_TendenciaTierra1_idx` (`TendenciaTierra_id`),
  ADD KEY `fk_AreaInfluencia_AbastecimientoAgua1_idx` (`AbastecimientoAgua_id`),
  ADD KEY `fk_AreaInfluencia_EvacuacoinAguaLluvia1_idx` (`EvacuacoinAguaLluvia_id`),
  ADD KEY `fk_AreaInfluencia_CaracteristicasEtnicas1_idx` (`CaracteristicasEtnicas_id`),
  ADD KEY `fk_AreaInfluencia_ConsolidacionAreaInfluencia1_idx` (`ConsolidacionAreaInfluencia_id`),
  ADD KEY `fk_AreaInfluencia_EvacuacionAguasServidas1_idx` (`EvacuacionAguasServidas_id`);

--
-- Indices de la tabla `areainfluencia_has_lenguaje`
--
ALTER TABLE `areainfluencia_has_lenguaje`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`Lenguaje_id`),
  ADD KEY `fk_AreaInfluencia_has_Lenguaje_Lenguaje1_idx` (`Lenguaje_id`),
  ADD KEY `fk_AreaInfluencia_has_Lenguaje_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_peligros`
--
ALTER TABLE `areainfluencia_has_peligros`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`Peligros_id`),
  ADD KEY `fk_AreaInfluencia_has_Peligros_Peligros1_idx` (`Peligros_id`),
  ADD KEY `fk_AreaInfluencia_has_Peligros_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_religion`
--
ALTER TABLE `areainfluencia_has_religion`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`Religion_id`),
  ADD KEY `fk_AreaInfluencia_has_Religion_Religion1_idx` (`Religion_id`),
  ADD KEY `fk_AreaInfluencia_has_Religion_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_tipofuentes`
--
ALTER TABLE `areainfluencia_has_tipofuentes`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`TipoFuentes_id`),
  ADD KEY `fk_AreaInfluencia_has_TipoFuentes_TipoFuentes1_idx` (`TipoFuentes_id`),
  ADD KEY `fk_AreaInfluencia_has_TipoFuentes_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_tipovegetal`
--
ALTER TABLE `areainfluencia_has_tipovegetal`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`TipoVegetal_id`),
  ADD KEY `fk_AreaInfluencia_has_TipoVegetal_TipoVegetal1_idx` (`TipoVegetal_id`),
  ADD KEY `fk_AreaInfluencia_has_TipoVegetal_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_topologia`
--
ALTER TABLE `areainfluencia_has_topologia`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`Topologia_id`),
  ADD KEY `fk_AreaInfluencia_has_Topologia_Topologia1_idx` (`Topologia_id`),
  ADD KEY `fk_AreaInfluencia_has_Topologia_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_tradicion`
--
ALTER TABLE `areainfluencia_has_tradicion`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`Tradicion_id`),
  ADD KEY `fk_AreaInfluencia_has_Tradicion_Tradicion1_idx` (`Tradicion_id`),
  ADD KEY `fk_AreaInfluencia_has_Tradicion_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `areainfluencia_has_usotierra`
--
ALTER TABLE `areainfluencia_has_usotierra`
  ADD PRIMARY KEY (`AreaInfluencia_id`,`UsoTierra_id`),
  ADD KEY `fk_AreaInfluencia_has_UsoTierra_UsoTierra1_idx` (`UsoTierra_id`),
  ADD KEY `fk_AreaInfluencia_has_UsoTierra_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Asociacion_TipoAsociacion1_idx` (`TipoAsociacion_id`);

--
-- Indices de la tabla `biodigestor`
--
ALTER TABLE `biodigestor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Biodigestor_UnidadProduccion1_idx` (`UnidadProduccion_id`);

--
-- Indices de la tabla `calidadaire`
--
ALTER TABLE `calidadaire`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calidadsuelo`
--
ALTER TABLE `calidadsuelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caracteristicasetnicas`
--
ALTER TABLE `caracteristicasetnicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoriaproyecto`
--
ALTER TABLE `categoriaproyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clima`
--
ALTER TABLE `clima`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicionesdrenaje`
--
ALTER TABLE `condicionesdrenaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consolidacionareainfluencia`
--
ALTER TABLE `consolidacionareainfluencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ecosistema`
--
ALTER TABLE `ecosistema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evacuacionaguasservidas`
--
ALTER TABLE `evacuacionaguasservidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evacuacoinagualluvia`
--
ALTER TABLE `evacuacoinagualluvia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupoalimentosproductos`
--
ALTER TABLE `grupoalimentosproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lenguaje`
--
ALTER TABLE `lenguaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `manejoambiental`
--
ALTER TABLE `manejoambiental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ManejoAmbiental_TipoProyecto1_idx` (`TipoProyecto_id`),
  ADD KEY `fk_ManejoAmbiental_CategoriaProyecto1_idx` (`CategoriaProyecto_id`),
  ADD KEY `fk_ManejoAmbiental_UnidadProduccion1_idx` (`UnidadProduccion_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivelfratico`
--
ALTER TABLE `nivelfratico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizacionsocial`
--
ALTER TABLE `organizacionsocial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `origeningresos`
--
ALTER TABLE `origeningresos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paisaje`
--
ALTER TABLE `paisaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Paisaje_AreaInfluencia1_idx` (`AreaInfluencia_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `peligros`
--
ALTER TABLE `peligros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permeabilidadsuelo`
--
ALTER TABLE `permeabilidadsuelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planriesgos`
--
ALTER TABLE `planriesgos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_PlanRiesgos_TipoAbono1_idx` (`TipoAbono_id`),
  ADD KEY `fk_PlanRiesgos_TipoControlPlaga1_idx` (`TipoControlPlaga_id`),
  ADD KEY `fk_PlanRiesgos_UnidadProduccion1_idx` (`UnidadProduccion_id`);

--
-- Indices de la tabla `planriesgos_has_grupoalimentosproductos`
--
ALTER TABLE `planriesgos_has_grupoalimentosproductos`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`GrupoAlimentosProductos_id`),
  ADD KEY `fk_PlanRiesgos_has_GrupoAlimentosProductos_GrupoAlimentosPr_idx` (`GrupoAlimentosProductos_id`),
  ADD KEY `fk_PlanRiesgos_has_GrupoAlimentosProductos_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_origeningresos`
--
ALTER TABLE `planriesgos_has_origeningresos`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`OrigenIngresos_id`),
  ADD KEY `fk_PlanRiesgos_has_OrigenIngresos_OrigenIngresos1_idx` (`OrigenIngresos_id`),
  ADD KEY `fk_PlanRiesgos_has_OrigenIngresos_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_tipoagricultura`
--
ALTER TABLE `planriesgos_has_tipoagricultura`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`TipoAgricultura_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAgricultura_TipoAgricultura1_idx` (`TipoAgricultura_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAgricultura_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_tipoalimentos`
--
ALTER TABLE `planriesgos_has_tipoalimentos`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`TipoAlimentos_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAlimentos_TipoAlimentos1_idx` (`TipoAlimentos_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAlimentos_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_tipoalimentosconsumo`
--
ALTER TABLE `planriesgos_has_tipoalimentosconsumo`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`TipoAlimentosConsumo_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAlimentosConsumo_TipoAlimentosConsum_idx` (`TipoAlimentosConsumo_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAlimentosConsumo_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_tipoanimales`
--
ALTER TABLE `planriesgos_has_tipoanimales`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`TipoAnimales_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAnimales_TipoAnimales1_idx` (`TipoAnimales_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoAnimales_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `planriesgos_has_tipocultivos`
--
ALTER TABLE `planriesgos_has_tipocultivos`
  ADD PRIMARY KEY (`PlanRiesgos_id`,`TipoCultivos_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoCultivos_TipoCultivos1_idx` (`TipoCultivos_id`),
  ADD KEY `fk_PlanRiesgos_has_TipoCultivos_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `precipitaciones`
--
ALTER TABLE `precipitaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Producto_TipoProducto1_idx` (`TipoProducto_id`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ci_UNIQUE` (`ci`);

--
-- Indices de la tabla `recirculacionaire`
--
ALTER TABLE `recirculacionaire`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ruido`
--
ALTER TABLE `ruido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Taller_UnidadProduccion1_idx` (`UnidadProduccion_id`);

--
-- Indices de la tabla `taller_has_tipodesecho`
--
ALTER TABLE `taller_has_tipodesecho`
  ADD PRIMARY KEY (`Taller_id`,`TipoDesecho_id`),
  ADD KEY `fk_Taller_has_TipoDesecho_TipoDesecho1_idx` (`TipoDesecho_id`),
  ADD KEY `fk_Taller_has_TipoDesecho_Taller1_idx` (`Taller_id`);

--
-- Indices de la tabla `taller_has_tiporiesgos`
--
ALTER TABLE `taller_has_tiporiesgos`
  ADD PRIMARY KEY (`Taller_id`,`TipoRiesgos_id`),
  ADD KEY `fk_Taller_has_TipoRiesgos_TipoRiesgos1_idx` (`TipoRiesgos_id`),
  ADD KEY `fk_Taller_has_TipoRiesgos_Taller1_idx` (`Taller_id`);

--
-- Indices de la tabla `tendenciatierra`
--
ALTER TABLE `tendenciatierra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoabono`
--
ALTER TABLE `tipoabono`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoagricultura`
--
ALTER TABLE `tipoagricultura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoalimentos`
--
ALTER TABLE `tipoalimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoalimentosconsumo`
--
ALTER TABLE `tipoalimentosconsumo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoanimales`
--
ALTER TABLE `tipoanimales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoasociacion`
--
ALTER TABLE `tipoasociacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocontrolplaga`
--
ALTER TABLE `tipocontrolplaga`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocultivos`
--
ALTER TABLE `tipocultivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipodesecho`
--
ALTER TABLE `tipodesecho`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipofuentes`
--
ALTER TABLE `tipofuentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoproyecto`
--
ALTER TABLE `tipoproyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiporiesgos`
--
ALTER TABLE `tiporiesgos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposuelo`
--
ALTER TABLE `tiposuelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoterreno`
--
ALTER TABLE `tipoterreno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipovegetal`
--
ALTER TABLE `tipovegetal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `topologia`
--
ALTER TABLE `topologia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Trabajadores_PlanRiesgos1_idx` (`PlanRiesgos_id`);

--
-- Indices de la tabla `tradicion`
--
ALTER TABLE `tradicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidadproduccion`
--
ALTER TABLE `unidadproduccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_UnidadProduccion_Asociacion1_idx` (`Asociacion_id`),
  ADD KEY `fk_UnidadProduccion_Producto1_idx` (`Producto_id`);

--
-- Indices de la tabla `unidadproduccion_has_propietario`
--
ALTER TABLE `unidadproduccion_has_propietario`
  ADD PRIMARY KEY (`UnidadProduccion_id`,`Propietario_ci`),
  ADD KEY `fk_UnidadProduccion_has_Propietario_Propietario1_idx` (`Propietario_ci`),
  ADD KEY `fk_UnidadProduccion_has_Propietario_UnidadProduccion1_idx` (`UnidadProduccion_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usosvegetacion`
--
ALTER TABLE `usosvegetacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usosvegetacion_has_areainfluencia_has_tipovegetal`
--
ALTER TABLE `usosvegetacion_has_areainfluencia_has_tipovegetal`
  ADD PRIMARY KEY (`UsosVegetacion_id`,`AreaInfluencia_has_TipoVegetal_AreaInfluencia_id`,`AreaInfluencia_has_TipoVegetal_TipoVegetal_id`),
  ADD KEY `fk_UsosVegetacion_has_AreaInfluencia_has_TipoVegetal_AreaIn_idx` (`AreaInfluencia_has_TipoVegetal_AreaInfluencia_id`,`AreaInfluencia_has_TipoVegetal_TipoVegetal_id`),
  ADD KEY `fk_UsosVegetacion_has_AreaInfluencia_has_TipoVegetal_UsosVe_idx` (`UsosVegetacion_id`);

--
-- Indices de la tabla `usotierra`
--
ALTER TABLE `usotierra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abastecimientoagua`
--
ALTER TABLE `abastecimientoagua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `areainfluencia`
--
ALTER TABLE `areainfluencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asociacion`
--
ALTER TABLE `asociacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `calidadaire`
--
ALTER TABLE `calidadaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `calidadsuelo`
--
ALTER TABLE `calidadsuelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `caracteristicasetnicas`
--
ALTER TABLE `caracteristicasetnicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `categoriaproyecto`
--
ALTER TABLE `categoriaproyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clima`
--
ALTER TABLE `clima`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `condicionesdrenaje`
--
ALTER TABLE `condicionesdrenaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `consolidacionareainfluencia`
--
ALTER TABLE `consolidacionareainfluencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ecosistema`
--
ALTER TABLE `ecosistema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `evacuacionaguasservidas`
--
ALTER TABLE `evacuacionaguasservidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `evacuacoinagualluvia`
--
ALTER TABLE `evacuacoinagualluvia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lenguaje`
--
ALTER TABLE `lenguaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manejoambiental`
--
ALTER TABLE `manejoambiental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `nivelfratico`
--
ALTER TABLE `nivelfratico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `organizacionsocial`
--
ALTER TABLE `organizacionsocial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `origeningresos`
--
ALTER TABLE `origeningresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paisaje`
--
ALTER TABLE `paisaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `peligros`
--
ALTER TABLE `peligros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permeabilidadsuelo`
--
ALTER TABLE `permeabilidadsuelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `planriesgos`
--
ALTER TABLE `planriesgos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `precipitaciones`
--
ALTER TABLE `precipitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recirculacionaire`
--
ALTER TABLE `recirculacionaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ruido`
--
ALTER TABLE `ruido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tendenciatierra`
--
ALTER TABLE `tendenciatierra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoabono`
--
ALTER TABLE `tipoabono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoanimales`
--
ALTER TABLE `tipoanimales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoasociacion`
--
ALTER TABLE `tipoasociacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipocontrolplaga`
--
ALTER TABLE `tipocontrolplaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipocultivos`
--
ALTER TABLE `tipocultivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipofuentes`
--
ALTER TABLE `tipofuentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoproyecto`
--
ALTER TABLE `tipoproyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tiposuelo`
--
ALTER TABLE `tiposuelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipoterreno`
--
ALTER TABLE `tipoterreno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipovegetal`
--
ALTER TABLE `tipovegetal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `topologia`
--
ALTER TABLE `topologia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tradicion`
--
ALTER TABLE `tradicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `unidadproduccion`
--
ALTER TABLE `unidadproduccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usosvegetacion`
--
ALTER TABLE `usosvegetacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usotierra`
--
ALTER TABLE `usotierra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `areainfluencia`
--
ALTER TABLE `areainfluencia`
  ADD CONSTRAINT `fk_AreaInfluencia_AbastecimientoAgua1` FOREIGN KEY (`AbastecimientoAgua_id`) REFERENCES `abastecimientoagua` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_CalidadAire1` FOREIGN KEY (`CalidadAire_id`) REFERENCES `calidadaire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_CalidadSuelo1` FOREIGN KEY (`CalidadSuelo_id`) REFERENCES `calidadsuelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_CaracteristicasEtnicas1` FOREIGN KEY (`CaracteristicasEtnicas_id`) REFERENCES `caracteristicasetnicas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_Clima1` FOREIGN KEY (`Clima_id`) REFERENCES `clima` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_CondicionesDrenaje1` FOREIGN KEY (`CondicionesDrenaje_id`) REFERENCES `condicionesdrenaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_ConsolidacionAreaInfluencia1` FOREIGN KEY (`ConsolidacionAreaInfluencia_id`) REFERENCES `consolidacionareainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_Ecosistema1` FOREIGN KEY (`Ecosistema_id`) REFERENCES `ecosistema` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_EvacuacionAguasServidas1` FOREIGN KEY (`EvacuacionAguasServidas_id`) REFERENCES `evacuacionaguasservidas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_EvacuacoinAguaLluvia1` FOREIGN KEY (`EvacuacoinAguaLluvia_id`) REFERENCES `evacuacoinagualluvia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_ManejoAmbiental1` FOREIGN KEY (`ManejoAmbiental_id`) REFERENCES `manejoambiental` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_NivelFratico1` FOREIGN KEY (`NivelFratico_id`) REFERENCES `nivelfratico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_OrganizacionSocial1` FOREIGN KEY (`OrganizacionSocial_id`) REFERENCES `organizacionsocial` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_PermeabilidadSuelo1` FOREIGN KEY (`PermeabilidadSuelo_id`) REFERENCES `permeabilidadsuelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_Precipitaciones1` FOREIGN KEY (`Precipitaciones_id`) REFERENCES `precipitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_RecirculacionAire1` FOREIGN KEY (`RecirculacionAire_id`) REFERENCES `recirculacionaire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_Ruido1` FOREIGN KEY (`Ruido_id`) REFERENCES `ruido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_TendenciaTierra1` FOREIGN KEY (`TendenciaTierra_id`) REFERENCES `tendenciatierra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_TipoSuelo1` FOREIGN KEY (`TipoSuelo_id`) REFERENCES `tiposuelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_TipoTerreno1` FOREIGN KEY (`TipoTerreno_id`) REFERENCES `tipoterreno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_lenguaje`
--
ALTER TABLE `areainfluencia_has_lenguaje`
  ADD CONSTRAINT `fk_AreaInfluencia_has_Lenguaje_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_Lenguaje_Lenguaje1` FOREIGN KEY (`Lenguaje_id`) REFERENCES `lenguaje` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_peligros`
--
ALTER TABLE `areainfluencia_has_peligros`
  ADD CONSTRAINT `fk_AreaInfluencia_has_Peligros_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_Peligros_Peligros1` FOREIGN KEY (`Peligros_id`) REFERENCES `peligros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_religion`
--
ALTER TABLE `areainfluencia_has_religion`
  ADD CONSTRAINT `fk_AreaInfluencia_has_Religion_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_Religion_Religion1` FOREIGN KEY (`Religion_id`) REFERENCES `religion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_tipofuentes`
--
ALTER TABLE `areainfluencia_has_tipofuentes`
  ADD CONSTRAINT `fk_AreaInfluencia_has_TipoFuentes_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_TipoFuentes_TipoFuentes1` FOREIGN KEY (`TipoFuentes_id`) REFERENCES `tipofuentes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_tipovegetal`
--
ALTER TABLE `areainfluencia_has_tipovegetal`
  ADD CONSTRAINT `fk_AreaInfluencia_has_TipoVegetal_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_TipoVegetal_TipoVegetal1` FOREIGN KEY (`TipoVegetal_id`) REFERENCES `tipovegetal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_topologia`
--
ALTER TABLE `areainfluencia_has_topologia`
  ADD CONSTRAINT `fk_AreaInfluencia_has_Topologia_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_Topologia_Topologia1` FOREIGN KEY (`Topologia_id`) REFERENCES `topologia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_tradicion`
--
ALTER TABLE `areainfluencia_has_tradicion`
  ADD CONSTRAINT `fk_AreaInfluencia_has_Tradicion_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_Tradicion_Tradicion1` FOREIGN KEY (`Tradicion_id`) REFERENCES `tradicion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `areainfluencia_has_usotierra`
--
ALTER TABLE `areainfluencia_has_usotierra`
  ADD CONSTRAINT `fk_AreaInfluencia_has_UsoTierra_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaInfluencia_has_UsoTierra_UsoTierra1` FOREIGN KEY (`UsoTierra_id`) REFERENCES `usotierra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asociacion`
--
ALTER TABLE `asociacion`
  ADD CONSTRAINT `fk_Asociacion_TipoAsociacion1` FOREIGN KEY (`TipoAsociacion_id`) REFERENCES `tipoasociacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `biodigestor`
--
ALTER TABLE `biodigestor`
  ADD CONSTRAINT `fk_Biodigestor_UnidadProduccion1` FOREIGN KEY (`UnidadProduccion_id`) REFERENCES `unidadproduccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `manejoambiental`
--
ALTER TABLE `manejoambiental`
  ADD CONSTRAINT `fk_ManejoAmbiental_CategoriaProyecto1` FOREIGN KEY (`CategoriaProyecto_id`) REFERENCES `categoriaproyecto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ManejoAmbiental_TipoProyecto1` FOREIGN KEY (`TipoProyecto_id`) REFERENCES `tipoproyecto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ManejoAmbiental_UnidadProduccion1` FOREIGN KEY (`UnidadProduccion_id`) REFERENCES `unidadproduccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `paisaje`
--
ALTER TABLE `paisaje`
  ADD CONSTRAINT `fk_Paisaje_AreaInfluencia1` FOREIGN KEY (`AreaInfluencia_id`) REFERENCES `areainfluencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos`
--
ALTER TABLE `planriesgos`
  ADD CONSTRAINT `fk_PlanRiesgos_TipoAbono1` FOREIGN KEY (`TipoAbono_id`) REFERENCES `tipoabono` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_TipoControlPlaga1` FOREIGN KEY (`TipoControlPlaga_id`) REFERENCES `tipocontrolplaga` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_UnidadProduccion1` FOREIGN KEY (`UnidadProduccion_id`) REFERENCES `unidadproduccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_grupoalimentosproductos`
--
ALTER TABLE `planriesgos_has_grupoalimentosproductos`
  ADD CONSTRAINT `fk_PlanRiesgos_has_GrupoAlimentosProductos_GrupoAlimentosProd1` FOREIGN KEY (`GrupoAlimentosProductos_id`) REFERENCES `grupoalimentosproductos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_GrupoAlimentosProductos_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_origeningresos`
--
ALTER TABLE `planriesgos_has_origeningresos`
  ADD CONSTRAINT `fk_PlanRiesgos_has_OrigenIngresos_OrigenIngresos1` FOREIGN KEY (`OrigenIngresos_id`) REFERENCES `origeningresos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_OrigenIngresos_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_tipoagricultura`
--
ALTER TABLE `planriesgos_has_tipoagricultura`
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAgricultura_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAgricultura_TipoAgricultura1` FOREIGN KEY (`TipoAgricultura_id`) REFERENCES `tipoagricultura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_tipoalimentos`
--
ALTER TABLE `planriesgos_has_tipoalimentos`
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAlimentos_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAlimentos_TipoAlimentos1` FOREIGN KEY (`TipoAlimentos_id`) REFERENCES `tipoalimentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_tipoalimentosconsumo`
--
ALTER TABLE `planriesgos_has_tipoalimentosconsumo`
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAlimentosConsumo_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAlimentosConsumo_TipoAlimentosConsumo1` FOREIGN KEY (`TipoAlimentosConsumo_id`) REFERENCES `tipoalimentosconsumo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_tipoanimales`
--
ALTER TABLE `planriesgos_has_tipoanimales`
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAnimales_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoAnimales_TipoAnimales1` FOREIGN KEY (`TipoAnimales_id`) REFERENCES `tipoanimales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planriesgos_has_tipocultivos`
--
ALTER TABLE `planriesgos_has_tipocultivos`
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoCultivos_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PlanRiesgos_has_TipoCultivos_TipoCultivos1` FOREIGN KEY (`TipoCultivos_id`) REFERENCES `tipocultivos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_Producto_TipoProducto1` FOREIGN KEY (`TipoProducto_id`) REFERENCES `tipoproducto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `taller`
--
ALTER TABLE `taller`
  ADD CONSTRAINT `fk_Taller_UnidadProduccion1` FOREIGN KEY (`UnidadProduccion_id`) REFERENCES `unidadproduccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `taller_has_tipodesecho`
--
ALTER TABLE `taller_has_tipodesecho`
  ADD CONSTRAINT `fk_Taller_has_TipoDesecho_Taller1` FOREIGN KEY (`Taller_id`) REFERENCES `taller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Taller_has_TipoDesecho_TipoDesecho1` FOREIGN KEY (`TipoDesecho_id`) REFERENCES `tipodesecho` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `taller_has_tiporiesgos`
--
ALTER TABLE `taller_has_tiporiesgos`
  ADD CONSTRAINT `fk_Taller_has_TipoRiesgos_Taller1` FOREIGN KEY (`Taller_id`) REFERENCES `taller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Taller_has_TipoRiesgos_TipoRiesgos1` FOREIGN KEY (`TipoRiesgos_id`) REFERENCES `tiporiesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD CONSTRAINT `fk_Trabajadores_PlanRiesgos1` FOREIGN KEY (`PlanRiesgos_id`) REFERENCES `planriesgos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `unidadproduccion`
--
ALTER TABLE `unidadproduccion`
  ADD CONSTRAINT `fk_UnidadProduccion_Asociacion1` FOREIGN KEY (`Asociacion_id`) REFERENCES `asociacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UnidadProduccion_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `unidadproduccion_has_propietario`
--
ALTER TABLE `unidadproduccion_has_propietario`
  ADD CONSTRAINT `fk_UnidadProduccion_has_Propietario_Propietario1` FOREIGN KEY (`Propietario_ci`) REFERENCES `propietario` (`ci`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UnidadProduccion_has_Propietario_UnidadProduccion1` FOREIGN KEY (`UnidadProduccion_id`) REFERENCES `unidadproduccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usosvegetacion_has_areainfluencia_has_tipovegetal`
--
ALTER TABLE `usosvegetacion_has_areainfluencia_has_tipovegetal`
  ADD CONSTRAINT `fk_UsosVegetacion_has_AreaInfluencia_has_TipoVegetal_AreaInfl1` FOREIGN KEY (`AreaInfluencia_has_TipoVegetal_AreaInfluencia_id`,`AreaInfluencia_has_TipoVegetal_TipoVegetal_id`) REFERENCES `areainfluencia_has_tipovegetal` (`AreaInfluencia_id`, `TipoVegetal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UsosVegetacion_has_AreaInfluencia_has_TipoVegetal_UsosVege1` FOREIGN KEY (`UsosVegetacion_id`) REFERENCES `usosvegetacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
