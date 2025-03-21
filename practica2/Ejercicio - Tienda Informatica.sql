-- Creacion de la base de datos
CREATE DATABASE infotienda;

-- Usar la base de datos
USE infotienda;

-- Creacion de la tabla producto
CREATE TABLE producto(
    codigo INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(25),
    precio int,
    fk_fabrica int,
    FOREIGN KEY (fk_fabrica) REFERENCES fabrica(codigo) 
);

-- Creacion de la tabla fabrica
CREATE TABLE fabrica(
    codigo INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(25),
    direccion VARCHAR(50)
);

-- Insertar datos a la tabla fabrica
INSERT INTO fabrica(codigo, nombre, direccion)
VALUE   (1, 'Samsung', 'Estados Unidos'),
        (2, 'Xiaomi', 'China'),
        (3, 'Apple', 'Estados Unidos');

-- Insertar datos a la tabla producto
INSERT INTO producto(codigo,nombre,precio,fk_frabrica)
VALUE   (1,'Redmi A1', 80, 2),
        (2,'Redmi note 10', 200, 2),
        (3,'Iphone 13', 500, 3),
        (4,'Samsung A14', 210, 1),
        (5,'Iphone 10', 300, 3),
        (6,'Mi Pad', 250, 2),
        (7,'Iphone 12', 450, 3),
        (8,'Samsung J5', 80, 3),
        (9,'Samsung A20', 460, 1),
        (10,'Iphone 15', 700, 3);

-- Obtener la lista de todos los productos ordenados por precio(De mas barato al mas caro)
SELECT * FROM producto ORDER BY precio asc

-- Obtener la lista de todos los fabricantes ordenados por nombre(De forma ascendente)
SELECT * FROM fabrica ORDER BY nombre asc

-- Obtener el nombre y precio de los productos que valgan mas de 200$
SELECT nombre,precio FROM producto WHERE precio > 200

-- Obtener el nombre y precio del producto mas barato
SELECT nombre,precio FROM producto ORDER BY precio ASC LIMIT 1;

