-- Crear bbdd tp_pronosticos
CREATE DATABASE tp_pronosticos;

-- Crear tabla resultados
CREATE TABLE `tp_pronosticos`.`resultados` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Ronda` INT NOT NULL,
    `Equipo1` VARCHAR(45) NOT NULL,
    `cantGolesEquipo1` INT NOT NULL,
    `cantGolesEquipo2` INT NOT NULL,
    `Equipo2` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Id`),
    UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE);

-- Insertar datos de resultados de los partidos
INSERT INTO `tp_pronosticos`.`resultados` (`Id`, `Ronda`, `Equipo1`, `cantGolesEquipo1`, `cantGolesEquipo2`, `Equipo2`) 
  VALUES ('1', '', 'Argentina', '1', '2', 'Arabia Saudita'), 
        ('1', '', 'Polonia', '0', '0', 'Mexico'), 
        ('1', '', 'Argentina', '2', '0', 'Mexico'), 
        ('1', '', 'Arabia Saudita', '0', '2', 'Polonia');

-- Crear tabla pronosticos
CREATE TABLE `tp_pronosticos`.`pronosticos` (
    `Id` INT NOT NULL AUTO_INCREMENT,
    `Participante` VARCHAR(45) NOT NULL,
    `Equipo1` VARCHAR(45) NOT NULL,
    `Gana1` varchar(1),
    `Empata` varchar(1),
    `Gana2` varchar(1),
    `Equipo2` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`Id`),
    UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE);

-- Insertar datos de pronosticos de los partidos
INSERT INTO `tp_pronosticos`.`pronosticos` (`Participante`, `Equipo1`, `Gana1`, `Empata`, `Gana2`, `Equipo2`) 
  VALUES ('Mariana', 'Argentina', 'X', '', '', 'Arabia Saudita'), 
        ('Mariana', 'Polonia', '', 'X', '', 'Mexico'), 
        ('Mariana', 'Argentina', 'X', '', '', 'Mexico'), 
        ('Mariana', 'Arabia Saudita', '', '', 'X', 'Polonia'), 
        ('Pedro', 'Argentina', 'X', '', '', 'Arabia Saudita'), 
        ('Pedro', 'Polonia', '', '', 'X', 'Mexico'), 
        ('Pedro', 'Argentina', 'X', '', '', 'Mexico'), 
        ('Pedro', 'Arabia Saudita', '', 'X', '', 'Polonia');
        
