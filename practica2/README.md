# Base de Datos de una tienda

Esta practica es sobre una base de datos SQL que gestiona los productos de varias fabrica. Incluye dos tablas principales: `producto` y `fabrica`, el cual se relacionan mediante una llave foránea.

---


## Estructura de la base de datos

### Tabla `producto`
- **codigo**: Llave primaria (INT, no nulo).
- **nombre**: Nombre del producto (VARCHAR(25)).
- **precio**: Precio del producto (INT).
- **fk_fabrica**: Llave foranea que refiere a `fabrica(codigo)`.

### Tabla `fabrica`
- **codigo**: LLave primaria (INT, no nulo).
- **nombre**: Nombre de la fabrica (VARCHAR(25)).
- **direccion**: Direccion de la fabrica (VARCHAR(50)).

---

## Relación entre Tablas

La tabla `producto` esta relacionada con la tabla `fabrica` mediante la llave foránea `fk_fabrica`, que referencia a la llave primaria `codigo` en la tabla `fabrica`.

---

