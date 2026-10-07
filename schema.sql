CREATE TABLE autores (
  id SERIAL PRIMARY KEY,
  nombre_completo VARCHAR(150) NOT NULL,
  pais VARCHAR(100),
  biografia TEXT
);

CREATE TABLE libros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(200) NOT NULL,
  año_publicacion INTEGER,
  isbn VARCHAR(20) UNIQUE,
  paginas INTEGER,
  fecha_adquisicion DATE,
  autor_id INTEGER NOT NULL,
  FOREIGN KEY (autor_id) REFERENCES autores(id)
);