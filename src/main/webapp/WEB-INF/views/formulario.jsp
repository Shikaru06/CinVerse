<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!doctype html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>CineVerse</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/styles.css">
</head>
<body>
	<header class="navbar">
		<div class="container">
			<a class="brand" href="${pageContext.request.contextPath}/peliculas">CineVerse</a>
			<nav class="navlinks">
				<a href="${pageContext.request.contextPath}/peliculas">Catálogo</a>
			</nav>
		</div>
	</header>
	<main>
		<section class="section">
			<div class="container">
				<div class="form-shell">
					<%-- TODO numerados: completa destino, método, campos hidden, nombres y valores dinámicos sin modificar las clases CSS. --%>
					<span class="eyebrow">Gestión</span>
					<h1>Formulario de pelicula</h1>
					<form action="${pageContext.request.contextPath}/peliculas"
						method="POST">
						<input type="hidden" name="accion" value="${modo}"><input
							type="hidden" name="id" value="${pelicula.id}">
						<div class="form-grid">
							<div class="field">
								<label for="titulo">Título</label><input id="titulo" type="text"
									name="titulo" value="${pelicula.titulo}">
							</div>
							<div class="field field--full">
								<label for="sinopsis">Sinopsis</label>
								<textarea id="sinopsis" name="sinopsis">${pelicula.sinopsis}</textarea>
							</div>
							<div class="field">
								<label for="duracion">Duración</label><input id="duracion"
									type="number" name="duracion" value="${pelicula.duracion}" min="0">
							</div>
							<div class="field">
								<label for="anio">Año</label><input id="anio"
									type="number" name="anio" value="${pelicula.anio}" min="0">
							</div>
							<div class="field">
								<label for="clasificacion">Clasificación</label><input id="clasificacion"
									type="text" name="clasificacion" value="${pelicula.clasificacion}">
							</div>
							<div class="field">
								<label for="imagen">Ruta de imagen</label><input id="imagen"
									type="text" name="imagen" value="${pelicula.imagen}">
							</div>
							<div class="field">
								<label for="generoId">Género</label><select id="generoId"
									name="generoId"><c:forEach var="genero"
										items="${generos}">
										<option value="${genero.id}" ${pelicula.genero.id == genero.id ? 'selected ' : ''}>${genero.nombre}</option>
									</c:forEach></select>
							</div>
						</div>
						<div class="actions">
							<button class="btn btn--primary" type="submit">Guardar</button>
							<a class="btn btn--ghost"
								href="${pageContext.request.contextPath}/peliculas">Cancelar</a>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>
	<footer>
		<div class="container">
			<strong>CineVerse</strong>
			<p>Historias que ocupan toda la pantalla. Proyecto académico
				DWES.</p>
		</div>
	</footer>
</body>
</html>
