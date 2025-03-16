-- Crear la base de datos
CREATE DATABASE CLUB;

USE CLUB;

-- Crear la tabla deporte
CREATE TABLE deporte(
    codigo INT PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    es_grupal BOOLEAN 
);

-- Insertar datos en la tabla Deporte
INSERT INTO deporte (codigo, nombre, es_grupal)
VALUE   (1, 'Tenis', true),
        (2, 'Futbol', true),
        (3, 'Basquet',true);

-- Crear la tabla Socio con clave foránea
CREATE TABLE Socio(
    num_socio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NUll,
    apellido VARCHAR(25),
    dni INT,
    fk_codigo INT,
    CONSTRAINT Codigo FOREIGN KEY (fk_codigo) REFERENCES deporte(codigo)
);

-- Insertar datos en la tabla Socio
INSERT INTO Socio (num_socio,nombre,apellido,dni,fk_codigo)
VALUE   (1, 'Raul', 'Mendez', 4851215, 2),
        (2, 'Luis','Miguel',7185613, 3),
        (3, 'Angela','Suarez', 32647954, 1),
        (4, 'Julio', 'Niño', 16321984, 2),
        (5, 'Diana', 'Dominguez', 16948321,3 ),
        (6, 'Pablo', 'Torres', 65432145, 3),
        (7, 'Paola', 'Torres', 16564789, 2),
        (8, 'Beatrix','Gimenez', 23654789, 1),
        (9, 'Diego','Castillo', 65465412, 2),
        (10, 'Matias','Rodriguez', 13247954, 1);

-- Selecciona solo a los socios que juegan tenis
SELECT * FROM socio WHERE fk_codigo = (SELECT codigo FROM deporte WHERE nombre = 'Tenis');

-- Cuenta cuantos jugadores de futbol hay
SELECT COUNT(*) FROM socio WHERE fk_codigo = (SELECT codigo FROM deporte WHERE nombre = 'Futbol');
