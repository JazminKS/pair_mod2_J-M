CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;

CREATE TABLE zapatillas (
id_zapatilla INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL
);

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) NOT NULL,
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL
);

CREATE TABLE empleados(
id_empleado INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE NOT NULL
);

CREATE TABLE facturas (
id_factura INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatillas INT NOT NULL,
id_empleados INT NOT NULL,
id_clientes  INT NOT NULL,
CONSTRAINT fk_zapatillas_factura 
	FOREIGN KEY (id_zapatillas)
    REFERENCES zapatillas(id_zapatilla),
CONSTRAINT fk_empleado_facturas
	FOREIGN KEY (id_empleados)
    REFERENCES empleados(id_empleado),
CONSTRAINT fk_cliente_facturas
	FOREIGN KEY (id_clientes)
    REFERENCES clientes(id_cliente)
);