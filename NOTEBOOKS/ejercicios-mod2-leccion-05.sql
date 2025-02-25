-- EJERCICIOS

-- 1. En este ejercicio vamos a corregir los errores que hemos encontrado en nuestras tablas.

SELECT*
    FROM zapatillas;
    
    ALTER TABLE zapatillas
    ADD COLUMN marca VARCHAR (45) NOT NULL;
    
    ALTER TABLE zapatillas
    ADD COLUMN talla INT NOT NULL;
    
    SELECT*
    FROM empleados;
    
    ALTER TABLE empleados
    MODIFY COLUMN salario FLOAT NOT NULL;
    
	SELECT*
    FROM clientes;
    
    ALTER TABLE clientes
    DROP COLUMN pais;
    
    SELECT*
    FROM facturas;
    
	ALTER TABLE facturas
    ADD COLUMN total FLOAT;
    
-- 2. Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:
    
    INSERT INTO zapatillas ( id_zapatilla, modelo, color, marca, talla) 
    VALUES (1, 'XQYUN','Negro', 'Nike', '42'), 
	(2, 'UOPMN','Rosas', 'Nike', '39'),
    (3, 'OPNYT','Verdes', 'Adidas', '35');
    
	INSERT INTO empleados ( id_empleado, nombre, tienda, salario, fecha_incorporacion) 
    VALUES (1, 'Laura','Alcobendas', 25.987, 03/09/2010), 
	(2, 'Maria','Sevilla', 0, 11/04/2001),
    (3, 'Ester','Oviedo', 30.16598, 29/11/2000);
    
    INSERT INTO clientes ( id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal) 
    VALUES (1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', 28176), 
	(2, 'Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
    (3, 'Carmen','298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);
    
    INSERT INTO facturas ( id_factura, numero_factura, fecha, id_zapatillas, id_empleados, id_clientes, total) 
    VALUES (1, '123', 11/12/2001, 1, 2, 1, 54.98), 
	(2, 1234, 23/05/2005, 1, 1, 3, 89.91),
    (3, 12345, 18/09/2015, 2, 3, 3, 76.23);
    
   -- 3. De nuevo nos hemos dado cuenta que hay algunos errores en la inserción de datos. En este ejercicios los actualizaremos para que nuestra BBDD este perfecta.
   
   UPDATE zapatillas
   SET color = 'amarillo'
   WHERE id_zapatilla = 2;
   
   UPDATE empleados
   SET tienda = 'A Coruña'
   WHERE id_empleado = 1;
   
   UPDATE clientes
   SET numero_telefono = '123456728'
   WHERE id_cliente = 1;
   
  UPDATE facturas
   SET total = 89.91
   WHERE id_factura = 2; 
   
   
   