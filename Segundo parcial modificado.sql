DROP DATABASE umg2;
CREATE DATABASE umg2;
USE umg2;
DROP TABLE puesto;
/* */
CREATE TABLE puesto (
	codigo_puesto VARCHAR(5),
    nombre_puesto VARCHAR(60),
    estatus_puesto VARCHAR(1),
    PRIMARY KEY (codigo_puesto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE departamento (
	codigo_departamento VARCHAR(5),
    nombre_departamento VARCHAR(60),
    estatus_departamento VARCHAR(1),
    PRIMARY KEY (codigo_departamento)	
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE concepto (
	codigo_concepto VARCHAR(5),
    nombre_concepto VARCHAR(60),
    efecto_concepto VARCHAR(1),
    estatus_concepto VARCHAR(1),
    PRIMARY KEY (codigo_concepto)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE empleado (
    codigo_empleado VARCHAR(5),
    nombre_empleado VARCHAR(60),
    codigo_puesto VARCHAR(5),
    codigo_departamento VARCHAR(5),
    sueldo_empleado FLOAT(10,2),
    estatus_empleado VARCHAR(1),
    PRIMARY KEY (codigo_empleado),
    CONSTRAINT FK_puestoempleado FOREIGN KEY (codigo_puesto) REFERENCES puesto (codigo_puesto),
    CONSTRAINT FK_departamentoempleado FOREIGN KEY (codigo_departamento) REFERENCES departamento (codigo_departamento)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE nominaE (
    codigo_nomina VARCHAR(5),
    fecha_inicial_nomina DATE,
    fecha_final_nomina DATE,
    PRIMARY KEY (codigo_nomina)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/* */
CREATE TABLE nominaD (
	codigo_nomina VARCHAR(5),
    codigo_empleado VARCHAR(5),
    codigo_concepto VARCHAR(5),
    valor_nominaD FLOAT(10,2),
    PRIMARY KEY (codigo_nomina, codigo_empleado, codigo_concepto),
    CONSTRAINT FK_conceptonominaD FOREIGN KEY (codigo_concepto) REFERENCES concepto (codigo_concepto),
    CONSTRAINT FK_nominaEnominaD FOREIGN KEY (codigo_nomina) REFERENCES nominaE (codigo_nomina),
    CONSTRAINT FK_empleadonominaD FOREIGN KEY (codigo_empleado) REFERENCES empleado (codigo_empleado)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    



    