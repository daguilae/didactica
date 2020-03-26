USE bd_ins;
CREATE TABLE estudiantes
(
	CodigoCarne VARCHAR(10) PRIMARY KEY,
    NombreEstudiante VARCHAR(60) NOT NULL,
    DireccionEstudiante VARCHAR(60) NOT NULL,
    TelefonoEstudiante VARCHAR(20) NOT NULL,
    CorreoElectronicoEstudiante VARCHAR(30),
    EstatusEstudiante VARCHAR(1)
    ) ENGINE=INNODB;
CREATE TABLE maestros
(
	CodigoMaestro VARCHAR(10) PRIMARY KEY,
    NombreMaestro VARCHAR(60) NOT NULL,
    DireccionMaestro VARCHAR(60) NOT NULL,
    TelefonoMaestro VARCHAR(29) NOT NULL,
    CorreoElectronicoMaestro VARCHAR(30),
    EstatusMaestro VARCHAR(1)
    ) ENGINE=INNODB;
    