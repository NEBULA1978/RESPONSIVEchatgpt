#!/bin/bash

# Crear la carpeta vue3-js si no existe
mkdir -p vue3-js

# Función para crear archivos appX.js en la carpeta vue3-js
create_app_js() {
    filename="app$1.js"
    echo 'const app = Vue.createApp({' > "vue3-js/$filename"
    echo '    data() {' >> "vue3-js/$filename"
    echo '        return {' >> "vue3-js/$filename"
    echo '            message: "¡Hola Mundo con Vue.js!"' >> "vue3-js/$filename"
    echo '        }' >> "vue3-js/$filename"
    echo '    }' >> "vue3-js/$filename"
    echo '})' >> "vue3-js/$filename"
    echo '' >> "vue3-js/$filename"
    echo 'app.mount("#app")' >> "vue3-js/$filename"
}

# Crear archivos app1.js hasta app6.js
for i in {1..6}; do
    create_app_js $i
done

# Crear el archivo indexvue.html con el contenido proporcionado
echo '<!DOCTYPE html>' > indexvue.html
echo '<html lang="en">' >> indexvue.html
echo '    <head>' >> indexvue.html
echo '        <meta charset="UTF-8">' >> indexvue.html
echo '        <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> indexvue.html
echo '        <title>Document</title>' >> indexvue.html
echo '        <!-- Enlaces a los archivos CSS generados por el script -->' >> indexvue.html
echo '        <link rel="stylesheet" href="css/style-768px.css" media="(max-width: 768px)">' >> indexvue.html
echo '        <link rel="stylesheet" href="css/style-1024px.css" media="(max-width: 1024px)">' >> indexvue.html
echo '        <link rel="stylesheet" href="css/style-1920px.css" media="(max-width: 1920px)">' >> indexvue.html
echo '        <!-- Enlace al CDN de Vue.js 3 -->' >> indexvue.html
echo '        <script src="https://cdn.jsdelivr.net/npm/vue@3.2.6/dist/vue.global.min.js"></script>' >> indexvue.html
echo '    </head>' >> indexvue.html
echo '    <body>' >> indexvue.html
echo '        <div id="app">' >> indexvue.html
echo '            <h1 id="message">{{ message }}</h1>' >> indexvue.html
echo '        </div>' >> indexvue.html
echo '        <!-- Enlaces a los archivos JavaScript generados por el script -->' >> indexvue.html
echo '        <script src="js/main.js"></script>' >> indexvue.html
echo '        <script src="js/functions.js"></script>' >> indexvue.html
echo '        <script src="js/animations.js"></script>' >> indexvue.html
# Agregar todos los archivos appX.js creados
for i in {1..6}; do
    echo "        <script src='vue3-js/app$i.js'></script>" >> indexvue.html
done
echo '    </body>' >> indexvue.html
echo '</html>' >> indexvue.html

echo "Se ha creado indexvue.html y varios archivos appX.js con el contenido proporcionado."
