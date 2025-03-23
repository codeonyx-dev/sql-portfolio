### **Ejercicio: Gestión de una Biblioteca**

#### **Descripción:**
Vas a crear una base de datos relacional para gestionar una biblioteca. La base de datos debe almacenar información sobre libros, autores, usuarios y préstamos de libros. El objetivo es practicar la creación de tablas, inserción de datos, consultas, actualizaciones y eliminaciones.

---

### **Esquema de la Base de Datos:**

1. **Tabla `Autores`:**
   - `id_autor` (clave primaria, entero, autoincremental).
   - `nombre` (texto, máximo 100 caracteres).
   - `pais_origen` (texto, máximo 50 caracteres).

2. **Tabla `Libros`:**
   - `id_libro` (clave primaria, entero, autoincremental).
   - `titulo` (texto, máximo 100 caracteres).
   - `id_autor` (clave foránea que referencia a `Autores(id_autor)`).
   - `anio_publicacion` (año de publicación).
   - `genero` (texto, máximo 50 caracteres).

3. **Tabla `Usuarios`:**
   - `id_usuario` (clave primaria, entero, autoincremental).
   - `nombre` (texto, máximo 100 caracteres).
   - `email` (texto, máximo 100 caracteres).
   - `fecha_registro` (fecha de registro).

4. **Tabla `Prestamos`:**
   - `id_prestamo` (clave primaria, entero, autoincremental).
   - `id_libro` (clave foránea que referencia a `Libros(id_libro)`).
   - `id_usuario` (clave foránea que referencia a `Usuarios(id_usuario)`).
   - `fecha_prestamo` (fecha en que se prestó el libro).
   - `fecha_devolucion` (fecha en que se devolvió el libro, puede ser nula si aún no se ha devuelto).

---

### **Instrucciones:**

#### **1. Crear las tablas:**
   - Crea las tablas `Autores`, `Libros`, `Usuarios` y `Prestamos` con las columnas descritas anteriormente. Asegúrate de definir las claves primarias y foráneas correctamente.

#### **2. Insertar datos:**
   - Inserta al menos 5 autores, 10 libros, 5 usuarios y 7 préstamos. Asegúrate de que los datos sean coherentes (por ejemplo, un préstamo debe estar asociado a un libro y un usuario existentes).

#### **3. Realizar consultas:**
   Escribe consultas SQL para:
   1. Listar todos los libros con su título y el nombre del autor.
   2. Encontrar todos los libros publicados en un año específico (por ejemplo, 2005).
   3. Listar todos los préstamos que están actualmente activos (es decir, aquellos que no tienen fecha de devolución).
   4. Encontrar todos los libros prestados a un usuario específico.
   5. Contar cuántos libros hay en cada género.

#### **4. Actualizaciones:**
   - Actualiza la fecha de devolución de un préstamo específico.
   - Cambia el género de un libro específico.

#### **5. Eliminaciones:**
   - Elimina un usuario y todos sus préstamos asociados.
