DROP SCHEMA IF EXISTS CasaColonies;
CREATE SCHEMA CasaColonies;
USE CasaColonies;

CREATE TABLE Activitat (
	nom VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Activitat PRIMARY KEY (nom)
);

CREATE TABLE Comarca (
	nom VARCHAR(255) NOT NULL,
	superficie FLOAT UNSIGNED,
    numHab MEDIUMINT UNSIGNED,
    CONSTRAINT PK_Comarca PRIMARY KEY (nom)
);

CREATE TABLE Casa (
	nom VARCHAR(255) NOT NULL,
    capacitat TINYINT UNSIGNED,
    comarca_situ VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Casa PRIMARY KEY (nom),
    CONSTRAINT FK_ComarcaCasa FOREIGN KEY (comarca_situ) REFERENCES Comarca(nom)
);

CREATE TABLE Nen (
	codi SMALLINT UNSIGNED NOT NULL,
	nom VARCHAR(255) NOT NULL,
	llinatge VARCHAR(255) NOT NULL,
	telefon CHAR(9),
    comarca_res VARCHAR(255) NOT NULL,
    CONSTRAINT PK_Nen PRIMARY KEY (codi),
    CONSTRAINT FK_ComarcaNen FOREIGN KEY (comarca_res) REFERENCES Comarca(nom)
);

ALTER TABLE Nen ADD casa_allotjament VARCHAR(255) NOT NULL;
ALTER TABLE Nen ADD CONSTRAINT FK_NenCasa FOREIGN KEY (casa_allotjament) REFERENCES Casa(nom);

CREATE TABLE OfertaActivitats (
	nom_activitat VARCHAR(255) NOT NULL,
	nom_casa VARCHAR(255) NOT NULL,
    qualificacio TINYINT UNSIGNED,
    CONSTRAINT PK_OfertaActivitats PRIMARY KEY (nom_activitat,nom_casa),
    CONSTRAINT FK_OfertaActivitat FOREIGN KEY (nom_activitat) REFERENCES Activitat(nom),
    CONSTRAINT FK_OfertaCasa FOREIGN KEY (nom_casa) REFERENCES Casa(nom)
);





