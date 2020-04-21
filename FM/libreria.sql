CREATE DATABASE empresarial2;
use empresarial2;
CREATE TABLE productos 
(
	codigoProductos VARCHAR(18) PRIMARY KEY NOT NULL,
    nombreProductos VARCHAR(60),
    codigoMarca VARCHAR(5),
    codigoLinea VARCHAR(5),
    codigoTipoProducto VARCHAR(5),
    codigoAutores VARCHAR(5),
    estatusProductos VARCHAR(1),
    FOREIGN KEY (codigoMarca) REFERENCES marcas(codigoMarca),
    FOREIGN KEY (codigoLinea) REFERENCES lineas(codigoLinea),
    
    
    