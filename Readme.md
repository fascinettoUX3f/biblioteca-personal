# Biblioteca Personal

Base de datos PostgreSQL para administrar una colección personal de libros y sus autores.

## Schema

El proyecto contiene dos entidades:

- **Autores:** información de cada autor.
- **Libros:** información de cada libro de la colección.

Un autor puede tener varios libros, pero cada libro pertenece a un solo autor (**1:N**).

### Diagrama

```text
AUTORES
- id (PK)
- nombre_completo
- pais
- biografia
      |
      | 1:N
      ↓
LIBROS
- id (PK)
- titulo
- año_publicacion
- isbn
- paginas
- fecha_adquisicion
- autor_id (FK → autores.id)
```

## Setup

Conectarse a PostgreSQL y crear la base de datos:

```sql
CREATE DATABASE biblioteca_personal;
```

Conectarse a ella:

```text
\c biblioteca_personal
```

Ejecutar el schema:

```text
\i schema.sql
```

Verificar las tablas:

```text
\dt
\d autores
\d libros
```

## Decisiones de diseño

- `SERIAL` genera automáticamente los IDs.
- `nombre_completo` y `titulo` son obligatorios (`NOT NULL`).
- `isbn` es `UNIQUE`.
- `autor_id` es una Foreign Key que relaciona cada libro con un autor.
- `fecha_adquisicion` permite registrar cuándo se agregó el libro a la colección.