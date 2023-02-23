CREATE DATABASE login_hash;
USE login_hash;
CREATE TABLE `cargos` (
  `id_usuario` int(10) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id_usuario`, `correo`, `cargo`) VALUES
(1, 'ejemplo@gmail.com', 'Administrador'),
(2, 'victor@gmail.com', 'Moderador'),
(3, 'emanuel@gmail.com', 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `correo`, `pass`) VALUES
(1, 'ejemplo@gmail.com', '$2y$10$H91nJ51gLSM8b9.lzJP66eunMkcicq.7ei19FPUe2zsqIFpQRk7lu'),
(2, 'victor@gmail.com', '$2y$10$Al9nTp1poZo8IB9wiVLKJOjY.wFQ0ZbrzaXwFnhQZCVkojzXuzmLO'),
(3, 'emanuel@gmail.com', '$2y$10$H91nJ51gLSM8b9.lzJP66eunMkcicq.7ei19FPUe2zsqIFpQRk7lu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

CREATE DATABASE mindef;
USE mindef;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mindef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `nombre` varchar(40) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `carmil` int(15) NOT NULL,
  `fuerza` varchar(20) NOT NULL,
  `annoegre` int(5) NOT NULL,
  `annoser` int(15) NOT NULL,
  `presentacion` date NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `permiso` bit(1) NOT NULL,
  `desde` date DEFAULT NULL,
  `hasta` date DEFAULT NULL,
  `motivo` varchar(60) NOT NULL,
  `observaciones` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`nombre`, `cedula`, `carmil`, `fuerza`, `annoegre`, `annoser`, `presentacion`, `cargo`, `permiso`, `desde`, `hasta`, `motivo`, `observaciones`) VALUES
('Emanuel', '123123', 13123, 'ejercito', 2015, 2019, '2019-11-10', 'Jefe De todo', b'1', '2022-11-10', '2022-12-10', 'baja medica', 'ninguna'),
('Ayzacayo Choque', '3322745 LP', 71294675, 'EJTO.', 2017, 2020, '2020-08-16', 'Técnico Administrativo', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Poma Andrade Carlos Heriberto', '3380016 LP.', 72043068, 'AB.', 2016, 2019, '2021-04-14', 'Jefe de la Unidad De Derechos Humanos Y Derecho Internacional Humanitario', b'1', '2022-03-24', '2022-04-13', 'Vacacion', 'ninguna'),
('Lora Plata Ricardo Franco', '3428587 LP.', 72039709, 'AB.', 2018, 2020, '2020-04-28', 'Técnico en Interculturalidad', b'1', '2022-03-24', '2022-04-13', 'Vacacion', 'ninguna'),
('Chirinos Machaca Fabio Ivan ', '3437920 LP.', 67348454, 'FAB.', 2017, 2020, '2020-06-13', 'Tecnico en activos fijos', b'1', '2022-03-29', '0000-00-00', 'Permiso cuenta vacacion', 'ninguna'),
('Flores Cespedes Joel Ramber', '3723032 CB.', 72025491, 'EJTO.', 2017, 2020, '2020-07-02', 'Tecnico en activos fijos', b'1', '2022-03-28', '2022-03-01', 'Permiso cuenta vacacion', 'ninguna'),
('Calle Flores Americo Rolando', '3732714 CB.', 73051473, 'AB.', 2015, 2020, '2022-12-08', 'Técnico en Interculturalidad', b'0', '2022-03-21', '2022-03-31', 'ninguno', 'ninguna'),
('Apaza Cortez José Luis', '4048748 OR.', 71291105, 'EJTO.', 2012, 2015, '2017-03-25', 'Tecnico en Registro y Control de Vehiculos', b'1', '2022-03-31', '2022-04-01', 'Vacacion', 'ninguna'),
('Mancilla Rivera Alejandro', '410281 LP.', 71509558, 'AB.', 2015, 2019, '2019-02-16', 'Responsable de Sección de Capacitación y Carnetización del Personal Mercante.', b'1', '2022-03-31', '2022-04-01', 'Baja medica', 'ninguna'),
('Mamani Bautista Arnold Guido', '4271165 LP.', 71494041, 'AB.', 2015, 2019, '2020-10-12', 'Tecnico en activos fijos', b'0', '2022-03-28', '2022-03-31', 'ninguno', 'ninguna'),
('Merubia Paredes Luis Alejandro', '4280501  LP', 72008404, 'EJTO.', 2015, 2019, '2021-07-02', 'Responsable de la Sección de Administración de Almacenes', b'1', '2022-03-30', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Garnica Agreda Luis Alberto', '4296008 LP.', 71201153, 'EJTO.', 2018, 2021, '2021-07-11', 'Técnico en Interculturalidad', b'1', '2022-03-28', '2022-04-07', 'Permiso cuenta vacacion', 'ninguna'),
('Coarite Mamani Maria Tereza', '4339760 LP.', 72038754, 'AB.', 2014, 2018, '2022-07-13', 'Tecnico en Registro y Control de Vehiculos', b'0', '2022-03-31', '2022-03-31', 'ninguno', 'ninguna'),
('Lipa Larico Franz', '4363820 LP.', 71286388, 'EJTO.', 2018, 2021, '2022-10-24', 'Técnico en Activos Fijos', b'0', '2022-03-28', '2022-03-31', 'ninguno', 'ninguna'),
('Diaz Poma Gary Vladimir', '4535864 CB', 71732899, 'EJTO.', 2015, 2020, '2021-06-24', 'Tecnico en Registro y Control de Vehiculos', b'0', '2022-03-28', '2022-03-31', 'ninguno', 'ninguna'),
('Quispe Limachi German Alvaro', '4536398 CB.', 68920215, 'FAB.', 2013, 2018, '2022-07-27', 'Mecanico - Mantenimiento y Custodia de Vehiculos \"Villa Fatima\"', b'1', '2022-03-08', '2022-06-30', 'Vacacion', 'ninguna'),
('Quispe Hidalgo German Richard ', '4745024 LP.', 72544579, 'FAB.', 2016, 2019, '2019-05-09', 'Técnico de la Unidad  de Programas y Proyectos para la Navegacion Aérea', b'1', '2022-03-31', '2022-03-31', 'Permiso cuenta vacacion', 'ninguna'),
('Paco Ramos Jhony Fernando', '4770825 LP.', 72998325, 'AB.', 2013, 2017, '2018-12-18', 'Técnico de Carnetización del Personal Mercante - Encargado de Inventarios UMM.', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Quezada Gonzales Jesus Reynaldo', '4772964 LP.', 71206108, 'EJTO.', 2012, 2017, '2021-12-04', 'Tecnico Administrativo', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Rioja Mejia Herbi', '4784105 LP.', 72566842, 'AB.', 2018, 2020, '2021-01-04', 'Jefe de la Unidad De Derechos Humanos Y Derecho Internacional Humanitario', b'0', '2022-03-31', '2022-03-31', 'ninguno', 'ninguna'),
('Mujica Flores Marco Antonio', '4810281 LP.', 71509558, 'FAB.', 2013, 2017, '2022-10-23', 'Jefe de Unidad de Coordinacion Interinstitucional ', b'1', '2022-03-30', '2022-04-06', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Cachi Mamani Ivan Ruben', '4833972 LP.', 72003957, 'EJTO.', 2012, 2016, '2016-06-05', 'Técnico en Interculturalidad', b'0', '2022-03-31', '2022-03-31', 'ninguno', 'ninguna'),
('Mendoza Carvajal Hugo Emilio', '4841082 LP.', 74779916, 'EJTO.', 2016, 2019, '2021-11-08', 'Técnico  Nacional de Depósitos de Emergencias y Desastres Naturales El Alto', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Mamani Arcani German Gabino', '4885480 LP.', 76265443, 'EJTO.', 2015, 2019, '2019-02-22', 'Operador de Descargos y Homologación de Material Belico', b'1', '2022-03-21', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Rivas Flores Rodrigo', '4885670 LP.', 71563931, 'AB.', 2018, 2021, '2021-03-20', 'Tecnico en Registro y Control de Vehiculos', b'1', '2022-03-29', '0000-00-00', 'Permiso cuenta vacacion', 'ninguna'),
('Zambrana Jimenez Dante Eduardo', '4914251  LP', 67111619, 'AB.', 2017, 2022, '2022-05-05', 'Técnico en tramites de libretas', b'1', '2022-03-30', '2022-04-05', 'Permiso cuenta vacacion', 'ninguna'),
('Alarcon Mendoza Wilmer', '4928249 LP.', 74868824, 'EJTO.', 2016, 2021, '2021-11-15', 'Técnico en Redes y Soporte Técnico', b'1', '2022-03-29', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Quispe Choque Santos Luis', '5151533 CB.', 71725753, 'EJTO.', 2017, 2021, '2022-10-12', 'Técnico Coordinador SISRADE-DEWETRA', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Camacho Padilla Carlos Federico', '527210 CB', 72020742, 'AB.', 2015, 2019, '2020-03-30', 'Técnico Validador', b'1', '2021-09-10', '0000-00-00', 'Guardia', 'ninguna'),
('Calle Alcazar Juan carlos', '5272108  CB', 72020742, 'EJTO.', 2014, 2019, '2022-01-27', 'Tec. en Gestion de Suministros Y Transportes', b'1', '2022-03-31', '2022-03-31', 'Permiso cuenta vacacion', 'ninguna'),
('Aldunate Yvanov Carlos Silvestre', '527219 CB', 72020742, 'EJTO.', 2013, 2018, '2018-08-22', 'Encargado Operativo', b'1', '2022-03-21', '0000-00-00', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Silva Luna Saul Iver', '5272969 CB.', 67667672, 'EJTO.', 2013, 2017, '2017-10-02', 'Mecanico - Mantenimiento y Custodia de Vehiculos \"Villa Fatima\"', b'1', '2022-03-31', '2022-04-01', 'Vacacion', 'ninguna'),
('Mayta Machicado Freddy', '5596522 BN.', 72841030, 'AB.', 2012, 2015, '2018-03-21', 'Técnico en Activos Fijos', b'1', '2022-03-28', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Tumiri Apaza Luis Miguel ', '5972138 LP.', 68214629, 'FAB.', 2014, 2019, '2019-03-06', 'Auxiliar SAT Radares', b'1', '2022-03-31', '2022-03-31', 'Permiso cuenta vacacion', 'ninguna'),
('Gonzales Graff Reynaldo Gonzalo', '5984687 LP.', 72024885, 'AB.', 2015, 2019, '2019-06-22', 'Jefe  de Unidad de Puertos y Vías Navegables', b'1', '2022-03-28', '2022-03-01', 'Permiso cuenta vacacion', 'ninguna'),
('NuñeZ Fernadez Limber Alberto', '5993381 LP.', 67007380, 'AB.', 2015, 2020, '2020-11-07', 'Jefe de la Unidad De Derechos Humanos Y Derecho Internacional Humanitario', b'1', '2022-03-21', '2022-03-31', 'Vacacion', 'ninguna'),
('Tarqui Yujra Ruben Angel', '6000127 LP', 73288904, 'EJTO.', 2012, 2016, '2016-11-06', 'Tec. en Gestion de Suministros Y Transportes', b'1', '2022-03-30', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Ayaviri Hinojosa Jimmy', '600027 LP', 73288904, 'EJTO.', 2016, 2020, '2020-09-17', 'Encargado de Taller', b'1', '2022-03-31', '2022-03-31', 'Guardia', 'ninguna'),
('Machicado Tito Medardo', '600127 LP', 73288904, 'AB.', 2012, 2016, '2017-05-13', 'Responsable de la Sección de Soporte Técnico y Redes ', b'1', '2022-03-28', '2022-04-03', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
(' Alave Nina Wilfredo Rafael', '6011345 LP.', 72096665, 'EJTO.', 2012, 2017, '2018-11-27', 'Jefe de la Unidad De Derechos Humanos Y Derecho Internacional Humanitario', b'1', '2022-03-30', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Suntura Choquehuanca Juan Carlos', '6057817 LP.', 67407620, 'EJTO.', 2017, 2020, '2020-10-13', 'Auxiliar de Direccion', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Canaviri Huanca Victor Hugo', '6087985 LP.', 71563915, 'FAB.', 2015, 2018, '2021-07-09', 'Técnico en Activos Fijos', b'1', '2022-03-29', '0000-00-00', 'Permiso cuenta vacacion', 'ninguna'),
('Chura Loza Felix', '61084 LP.', 7254847, 'AB.', 2015, 2018, '2020-04-10', 'Técnico de Regulación Mercante', b'1', '2022-03-30', '2022-03-30', 'Guardia', 'ninguna'),
('Roca Urquiza Eduardo ', '614084 LP.', 72554847, 'EJTO.', 2015, 2019, '2022-02-06', ' Encargado Operativo.', b'1', '2022-03-31', '2022-04-01', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Rojas Miranda Marco Antonio', '6143084 LP.', 72554847, 'AB.', 2018, 2022, '2022-06-20', 'Técnico Informatico de la Unidad de  Capacitación ', b'1', '2022-03-31', '2022-03-31', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Edgar Rivero Cahuaya', '6180067 LP', 72040308, 'FAB.', 2018, 2022, '2022-09-14', 'Mecanico - Mantenimiento y Custodia de Vehiculos \"Villa Fatima\"', b'1', '2022-03-30', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Alquez Rivera Ivan Alexander', '6536155 CB. ', 67687830, 'EJTO.', 2014, 2018, '2022-08-04', 'Tecnico en activos fijos', b'0', '2022-03-31', '2022-04-01', 'ninguno', 'ninguna'),
('Chipana Quispe Martin', '6612086 PT.', 72021074, 'EJTO.', 2017, 2022, '2022-03-13', 'Técnico en Activos Fijos', b'1', '2022-03-31', '2022-04-03', 'Vacacion', 'ninguna'),
('Flores Maldonado Linda Fanny ', '672538 lp', 67669266, 'FAB.', 2014, 2018, '2018-12-10', 'Tecnico de FAT Servicios', b'1', '2022-03-31', '2022-03-31', 'Guardia', 'ninguna'),
('Cortez Franco Carlos Alberto', '6732538 lp', 67669266, 'AB.', 2018, 2021, '2022-04-03', 'Jefe de la Unidad de Prevencion', b'1', '2022-03-30', '2022-03-31', 'Permiso cuenta vacacion', 'ninguna'),
('Peña Bautista Robert Zenon', '673258 lp', 67669266, 'AB.', 2016, 2019, '2021-04-23', 'Asistente de Direccion', b'1', '2022-03-29', '0000-00-00', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Mollo Ali Fidel Alvaro', '6736153 LP.', 67346618, 'EJTO.', 2013, 2017, '2018-02-14', 'Mecanico - Mantenimiento y Custodia de Vehiculos \"Villa Fatima\"', b'0', '2022-03-28', '2022-04-01', 'ninguno', 'ninguna'),
('Pally Montaño Julio Cesar', '6740721 LP.', 67241334, 'EJTO.', 2013, 2018, '2022-05-09', 'Técnico en Activos Fijos', b'1', '2022-03-31', '2022-04-01', 'Vacacion', 'ninguna'),
('Balboa Huanca Amanda', '674945 LP.', 76540479, 'FAB.', 2013, 2017, '2019-11-26', 'Tecnico de Seguimiento de Bienes Inmuebles', b'1', '2022-03-30', '2022-04-05', 'Baja medica', 'ninguna'),
('Machaca Olvea Ronald.', '6763458 LP.', 75806386, 'EJTO.', 2015, 2018, '2019-10-16', 'Jefe de la Unidad De Derechos Humanos Y Derecho Internacional Humanitario', b'1', '2022-03-31', '2022-03-31', 'Vacacion', 'ninguna'),
('Colque Trujillano Juan Carlos', '6764945 LP.', 76540479, 'EJTO.', 2012, 2016, '2016-10-22', 'Responsable en proyectos de Capacitación', b'1', '2022-03-31', '2022-03-31', 'TRANSFERENCIA A COSSMIL SUCRE', 'ninguna'),
('Mamani Aro Nelson Osvaldo', '6767435 LP.', 73081813, 'EJTO.', 2017, 2022, '2022-06-21', 'Técnico en Interculturalidad', b'1', '2022-03-31', '2022-03-31', 'Vacacion', 'ninguna'),
('Freddy Aruquipa Gongora', '6770356 LP.', 71538217, 'AB.', 2012, 2017, '2021-03-24', 'Tecnico en Registro y Control de Vehiculos', b'1', '2022-03-24', '2022-04-13', 'Vacacion', 'ninguna'),
('Lazo Merida Robert Ryszard', '7009980 LP.', 67660068, 'FAB.', 2012, 2015, '2020-09-17', 'Técnico en Gestión Aduanera', b'1', '2022-03-28', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Chejo Mamani Edwin', '7044376 LP.', 72018828, 'EJTO.', 2014, 2017, '2019-05-12', 'Tecnico en activos fijos', b'1', '2022-03-31', '2022-04-01', 'Vacacion', 'ninguna'),
('Nina Escobar Daniela Silvia', '7044414 LP.', 71561500, 'EJTO.', 2018, 2022, '2022-12-27', 'Técnico de Depositos de Emergencias y Desastres Naturales Rurrenabaque', b'1', '2022-03-31', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna'),
('Marca Apaza Teodoro', '8325616 LP.', 71222788, 'AB.', 2014, 2017, '2022-09-02', 'Operador de Atencion al Publico  y recepcion de Documentacion', b'1', '2022-03-30', '2022-04-01', 'Permiso cuenta vacacion', 'ninguna');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cedula`);