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
				<%-- TODO 1-10: propiedades visuales, id y campos hidden según las instrucciones. --%>
				<div class="detail">
					<img class="detail__image"
						src="${pageContext.request.contextPath}${pelicula.imagen}" alt="${pelicula.titulo}">
					<div>
						<span class="badge">${pelicula.genero.nombre}</span>
						<h1>${pelicula.titulo}</h1>
						<p>${pelicula.sinopsis}</p>
						<div class="meta">
							<span>${pelicula.duracion} Minutos</span>
						</div>
						<div class="actions">
							<a class="btn btn--ghost"
								href="${pageContext.request.contextPath}/peliculas">Volver</a><a
								class="btn btn--primary"
								href="${pageContext.request.contextPath}/peliculas?accion=editar&amp;id=${pelicula.id}">Editar</a>
						</div>
					</div>
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
