-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: dogshBK
-- Source Schemata: dogsh
-- Created: Mon Nov 20 19:40:18 2017
-- Workbench Version: 6.3.6
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema dogsh
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `dogsh` ;
CREATE SCHEMA IF NOT EXISTS `dogsh` ;

-- ----------------------------------------------------------------------------
-- Table dogsh.Adoption
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `dogsh`.`Adoption` (
  `pid` INT(11) NOT NULL,
  `did` VARCHAR(3) NOT NULL,
  `date` DATE NOT NULL,
  `active` BIT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`, `did`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- ----------------------------------------------------------------------------
-- Table dogsh.Dog
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `dogsh`.`Dog` (
  `id` VARCHAR(3) NOT NULL,
  `weight` INT(11) NULL DEFAULT NULL,
  `picture` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- ----------------------------------------------------------------------------
-- Table dogsh.Person
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `dogsh`.`Person` (
  `id` INT(11) NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `dogsh`.`Person`
(`id`,`name`,`city`)
VALUES
(187,'Marc','Madrid'),
(591,'Kike','Inca'),
(399,'Andrea','Valencia'),
(435,'Joana','Palma'),
(349,'Lucas','Sevilla'),
(204,'John','Madrid'),
(100,'William','Barcelona'),
(507,'Sandra','Palma'),
(874,'Miguel','Valencia'),
(154,'Marc','Huesca'),
(569,'James','Valencia')
;

INSERT INTO `dogsh`.`Dog`
(`id`,`weight`,`picture`)
VALUES
('A40',2,'a40.png'),
('D27',15,'d27.jpg'),
('R95',8,'r95.jpg'),
('B49',12,NULL),
('H01',34,'h01.jpg'),
('F32',4,'f32.jpg'),
('M40',10,'m40.jpg'),
('V66',13,NULL),
('A21',19,'a21.jpg'),
('G97',28,NULL),
('R61',5,'r61.png'),
('T10',9,'t10.png')
;

INSERT INTO `dogsh`.`Adoption`
(`pid`,`did`,`date`,`active`)
VALUES
(349, 'H01','2006-08-21',FALSE),
(154, 'A21','2013-12-12',TRUE),
(204, 'V66','2015-04-16',TRUE),
(100, 'D27','2007-09-18',TRUE),
(435, 'T10','2012-05-30',FALSE),
(874, 'B49','2005-02-21',TRUE),
(154, 'G97','2002-07-23',FALSE),
(591, 'T10','2013-01-04',TRUE),
(100, 'F32','2016-09-26',TRUE),
(187, 'M40','2011-12-02',FALSE),
(399, 'A40','2015-08-17',TRUE),
(399, 'R95','2015-08-17',TRUE),
(435, 'M40','2012-10-14',TRUE)
;

