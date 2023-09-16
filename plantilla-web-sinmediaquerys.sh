#!/bin/bash

# Nombre del archivo HTML
archivo_html="mi_pagina-sinmedia.html"

# Contenido del archivo HTML
html_content="
<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Mi Página Web</title>
    <style>
        /* Estilos CSS para la clase .gallery */
        .gallery {
            display: grid;
            gap: 1rem;
            grid-auto-rows: 22rem;
            grid-template-columns: repeat(auto-fill, minmax(15rem, 1fr));
        }

        /* Estilos CSS para la clase .featured */
        .featured {
            grid-column: span 2;
        }
    </style>
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

    <main class='mi-main gallery'>
        <!-- Item de la galería -->
        <div class='featured'>
            <h1>Destacado</h1>
            <p>Este es un elemento destacado en la galería.</p>
        </div>

        <!-- Otros elementos de la galería -->
        <div>
            <h1>Elemento 1</h1>
            <p>Descripción del elemento 1.</p>
        </div>
        <div>
            <h1>Elemento 2</h1>
            <p>Descripción del elemento 2.</p>
        </div>
        <!-- Puedes agregar más elementos aquí -->
    </main>

    <footer class='mi-footer'>
        <p>&copy; 2023 Mi Página Web. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
"

# Guardar el contenido en el archivo HTML
echo "$html_content" > "$archivo_html"

# Mensaje de confirmación
echo "Se ha creado el archivo HTML: $archivo_html"