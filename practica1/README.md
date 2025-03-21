# Base de Datos de un Club

Esta practica es una base de datos SQL que gestiona socios y deportes en un club. Incluye dos tablas principales: `deporte` y `socio`, relacionadas mediante una llave foránea.

---


## Estructura de la Base de Datos

### Tabla `deporte`
- **codigo**: Clave primaria (INT).
- **nombre**: Nombre del deporte (VARCHAR(25), no nulo).
- **es_grupal**: Indica si el deporte es grupal (BOOLEAN).

### Tabla `socio`
- **num_socio**: Clave primaria (INT, AUTO_INCREMENT).
- **nombre**: Nombre del socio (VARCHAR(25), no nulo).
- **apellido**: Apellido del socio (VARCHAR(25)).
- **dni**: Documento de identidad (INT).
- **fk_codigo**: Clave foránea que referencia a `deporte(codigo)`.

---

## Relación entre Tablas

La tabla `socio` está relacionada con la tabla `deporte` mediante la clave foránea `fk_codigo`, que referencia a la clave primaria `codigo` en la tabla `deporte`.

---
