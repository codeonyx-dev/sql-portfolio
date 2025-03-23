-- Creacion de la base de datos `Biblioteca`
CREATE DATABASE Biblioteca;

--  Usar la base de datos 'Biblioteca'
USE Biblioteca;

-- Creacion de la tabla `Autores` para almacenar la informacion sobre los autores
CREATE TABLE Autores(
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    pais_origen VARCHAR(50)
);

-- Creacion de la tabla `Libros` para almacenar la informacion sobre  los libros
CREATE TABLE Libros(
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor),
    anio_publicado YEAR,
    genero VARCHAR(50)
);

-- Creacion de la tabla `Usuarios` para almacenar la informacion sobre  los Usuarios
CREATE TABLE Usuarios(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    fecha_registro DATE
);

-- Creacion de la tabla `Prestamos` para almacenar la informacion sobre  los Prestamos
CREATE TABLE Prestamos(
    id_prestamo INT PRIMARY KEY AUTO_INCREMENT,
    id_libro INT, FOREIGN KEY (id_libro) REFERENCES Libros(id_libro),
    id_usuario INT, FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    fecha_prestamo DATE,
    fecha_devolucion DATE
);

-- Insercion de datos a la tabla `Autores`
INSERT INTO Autores (nombre, pais_origen)
VALUE   ('Gabriel García Márquez', 'Colombia'),
        ('J.K. Rowling', 'Reino Unido'),
        ('George Orwell', 'Reino Unido'),
        ('Isabel Allende', 'Chile'),
        ('Mario Vargas Llosa', 'Perú');

-- Insercion de datos a la tabla `Libros`
INSERT INTO Libros (titulo, id_autor, anio_publicado, genero)
VALUE   ('Cien años de soledad',	1,	1967,	'Realismo mágico'),
        ('Harry Potter y la piedra filosofal',	2,	1997,	'Fantasía'),
        ('1984',	3,	1949,	'Ciencia ficción'),
        ('La casa de los espíritus',	4,	1982,	'Realismo mágico'),
        ('La ciudad y los perros',	5,	1963,	'Novela'),
        ('El amor en los tiempos del cólera',	1,	1985,	'Realismo mágico'),
        ('Harry Potter y la cámara secreta',	2,	1998,	'Fantasía'),
        ('Rebelión en la granja',	3,	1945,	'Sátira'),
        ('Paula',	4,	1994, 'Memorias'),
        ('La fiesta del chivo',	5, 2000, 'Novela histórica');

-- Insercion de datos a la tabla `Usuarios`
INSERT INTO Usuarios (nombre, email, fecha_registro)
VALUE   ('Juan Pérez',	'juan.perez@example.com',	'2025-01-15'),
        ('Ana Gómez',	'ana.gomez@example.com',	'2025-02-20'),
        ('Carlos Ruiz',	'carlos.ruiz@example.com',	'2025-03-10'),
        ('Laura Sánchez',	'laura.sanchez@example.com',	'2024-09-05'),
        ('Miguel Torres',	'miguel.torres@example.com',	'2024-08-12');

-- Insercion de datos a la tabla `Prestamos`
INSERT INTO Prestamos (id_prestamo,id_libro, id_usuario, fecha_prestamo, fecha_devolucion) 
VALUE  (1, 5, 1, '2025-01-18', NULL),
        (2, 4, 2, '2025-02-02', '2025-02-10'),
        (3, 3, 3, '2025-03-13', NULL),
        (4, 2, 4, '2025-02-14', '2025-02-20'),
        (5, 1, 5, '2025-01-08', NULL);        


-- Consultas De Busqueda de datos

-- Selecciona todos los libros y muestra su título junto con el nombre del autor
SELECT lib.titulo, aut.nombre 
FROM Libros lib 
JOIN Autores aut ON lib.id_autor = aut.id_autor;

-- Encuentra todos los libros publicados en un rango de años específico (entre 1995 y 2000)
SELECT titulo, anio_publicado 
FROM Libros
WHERE anio_publicado BETWEEN 1995 AND 2000;

-- Lista todos los préstamos que están actualmente activos (es decir, aquellos que no tienen fecha de devolución)
SELECT * 
FROM prestamos 
WHERE fecha_devolucion IS NULL;

-- Encontrar todos los libros prestados a un usuario específico (Juan Pérez)
SELECT u.nombre, l.titulo 
FROM prestamos p
INNER JOIN libros l ON p.id_libro = l.id_libro
INNER JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE u.nombre = 'Juan Pérez';

-- Contar cuántos libros hay en cada género
SELECT genero, COUNT(*) 
FROM Libros
GROUP BY genero;

-- Actualizaciones de datos 

-- Actualiza la fecha de un prestamo en especifico 
UPDATE Prestamos
SET fecha_devolucion = '2025-03-23'
WHERE id_prestamo = 3;

-- Actualiza el genero del nombre por colocando el titulo especifico
UPDATE Libros
SET genero = 'Alegoría'
WHERE titulo = 'Rebelión en la granja';

-- Eliminacion de usuario junto con los prestamos asociados a el
DELETE FROM Usuarios
WHERE id_usuario = 5;

DELETE FROM prestamos
WHERE id_usuario = 5;

