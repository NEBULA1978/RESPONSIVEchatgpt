#!/bin/bash

# Nombre del archivo HTML
archivo_html="mi_pagina.html"

# Contenido del archivo HTML
html_content="
<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Mi Página Web</title>
    <link rel='stylesheet' href='estilos.css'>
</head>
<body>
    <header class='mi-header'>
        <h1>Encabezado Principal</h1>
        <p>Bienvenido a mi sitio web.</p>
    </header>

    <nav class='mi-nav'>
        <h2>Menú de Navegación</h2>
        <ul>
            <li><a href='#'>Inicio</a></li>
            <li><a href='#'>Acerca de</a></li>
            <li><a href='#'>Servicios</a></li>
            <li><a href='#'>Contacto</a></li>
        </ul>
    </nav>

    <aside class='mi-aside'>
        <h2>Sidebar</h2>
        <p>Este es el contenido del aside.</p>
    </aside>

    <main class='mi-main'>
        <h1>Contenido Principal</h1>
        <p>¡Bienvenido al contenido principal de mi página web! Aquí encontrarás información relevante sobre diversos temas.</p>
    </main>

    <footer class='mi-footer'>
        <p>&copy; $(date +'%Y') Mi Página Web. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
"

# Guardar el contenido en el archivo HTML
echo "$html_content" > "$archivo_html"

# Mensaje de confirmación
echo "Se ha creado el archivo HTML: $archivo_html"
