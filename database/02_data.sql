-- Datos coherentes con las imágenes locales de assets/img/catalogo.
INSERT INTO genero (id, nombre) VALUES (1, 'Ciencia ficción');
INSERT INTO genero (id, nombre) VALUES (2, 'Drama');
INSERT INTO genero (id, nombre) VALUES (3, 'Comedia');
INSERT INTO genero (id, nombre) VALUES (4, 'Animación');
INSERT INTO genero (id, nombre) VALUES (5, 'Thriller');
INSERT INTO genero (id, nombre) VALUES (6, 'Aventura');
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (1, 'Órbita Cero', 'Una estación escucha una señal imposible', 128, 2026, '+12', '/assets/img/catalogo/orbita-cero.webp', 1);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (2, 'El Lago Quieto', 'Dos desconocidos comparten un verano decisivo', 112, 2025, '+7', '/assets/img/catalogo/lago-quieto.webp', 2);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (3, 'Kilómetros de Alegría', 'Un perro convierte un viaje familiar en una aventura', 98, 2026, 'TP', '/assets/img/catalogo/kilometros-alegria.webp', 3);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (4, 'Islas del Cielo', 'Una aprendiz busca una ciudad suspendida', 105, 2025, 'TP', '/assets/img/catalogo/islas-cielo.webp', 4);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (5, 'La Puerta', 'Una luz al final de la escalera cambia cada noche', 101, 2026, '+16', '/assets/img/catalogo/la-puerta.webp', 5);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (6, 'Bajo el Abismo', 'Una expedición descubre vida en una fosa oceánica', 119, 2024, '+12', '/assets/img/catalogo/bajo-abismo.webp', 1);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (7, 'Ciudad de Lluvia', 'Un detective sigue una pista entre neones', 116, 2025, '+16', '/assets/img/catalogo/ciudad-lluvia.webp', 5);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (8, 'Arena del Tiempo', 'Una viajera cruza un desierto que altera los recuerdos', 124, 2026, '+12', '/assets/img/catalogo/arena-tiempo.webp', 6);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (9, 'Templos de Niebla', 'Un cartógrafo busca un valle borrado de los mapas', 132, 2025, '+12', '/assets/img/catalogo/templos-niebla.webp', 6);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (10, 'Planeta Rojo', 'La primera colonia debe elegir entre partir o resistir', 137, 2026, '+12', '/assets/img/catalogo/planeta-rojo.webp', 1);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (11, 'Último Paso', 'Una bailarina vuelve al escenario tras una lesión', 109, 2024, 'TP', '/assets/img/catalogo/ultimo-paso.webp', 2);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (12, 'Lumi', 'Una niña conoce a una criatura nacida de la luz', 96, 2026, 'TP', '/assets/img/catalogo/lumi.webp', 4);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (13, 'Después del Puente', 'Supervivientes recorren una ciudad recuperada por la naturaleza', 121, 2025, '+16', '/assets/img/catalogo/despues-puente.webp', 5);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (14, 'Atardecer en Liria', 'Dos vidas coinciden durante una sola tarde', 103, 2024, '+7', '/assets/img/catalogo/atardecer-liria.webp', 2);
INSERT INTO pelicula (id, titulo, sinopsis, duracion, anio, clasificacion, imagen, genero_id) VALUES (15, 'Cumbre Norte', 'Un montañero afronta su ruta más difícil', 114, 2025, '+12', '/assets/img/catalogo/cumbre-norte.webp', 6);

COMMIT;
