CREATE DATABASE empresarial2;
use empresarial2;
usuarios
CREATE TABLE productos 
(
	codigoProductos VARCHAR(18) PRIMARY KEY NOT NULL,
    nombreProductos VARCHAR(80),
    codigoMarca VARCHAR(5),
    codigoLinea VARCHAR(5),
    codigoTipoProducto VARCHAR(5),
    codigoAutores VARCHAR(5),
    estatusProductos VARCHAR(1),
    FOREIGN KEY (codigoMarca) REFERENCES marcas(codigoMarca),
    FOREIGN KEY (codigoLinea) REFERENCES lineas(codigoLinea),
    FOREIGN KEY (codigoTipoProuducto) REFERENCES tipoproducto(codigoTipoProducto),
    FOREIGN KEY (codigoAutores) REFERENCES autores(codigoAutores)
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    