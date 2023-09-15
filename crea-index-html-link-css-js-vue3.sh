#!/bin/bash

# Create new CSS file for a specific screen size
create_css_file() {
    size="$1"
    filename="style-$size.css"
    touch "css/$filename"
    echo "@media (max-width: $size) {" >> "css/$filename"
    echo "    /* Your styles for max-width $size go here */" >> "css/$filename"
    echo "}" >> "css/$filename"
}

# Create new JavaScript file
create_js_file() {
    filename="$1.js"
    touch "js/$filename"
    echo "// JavaScript code for $1" >> "js/$filename"
}

# Create CSS files for different screen sizes
create_css_file "768px"
create_css_file "1024px"
create_css_file "1920px"

# Create JavaScript files for different purposes
create_js_file "main"
create_js_file "functions"
create_js_file "animations"

# Create the index.html file with the provided content and dynamically add CSS, JavaScript, and Vue.js links
echo '<!DOCTYPE html>' > "index.html"
echo '<html lang="en">' >> "index.html"
echo '<head>' >> "index.html"
echo '    <meta charset="UTF-8">' >> "index.html"
echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> "index.html"
echo '    <title>Document</title>' >> "index.html"
echo '    <!-- Enlaces a los archivos CSS generados por el script -->' >> "index.html"
echo '    <link rel="stylesheet" href="css/style-768px.css" media="(max-width: 768px)">' >> "index.html"
echo '    <link rel="stylesheet" href="css/style-1024px.css" media="(max-width: 1024px)">' >> "index.html"
echo '    <link rel="stylesheet" href="css/style-1920px.css" media="(max-width: 1920px)">' >> "index.html"
echo '    <!-- Enlace al CDN de Vue.js 3 -->' >> "index.html"
echo '    <script src="https://cdn.jsdelivr.net/npm/vue@3.2.6/dist/vue.global.min.js"></script>' >> "index.html"
echo '</head>' >> "index.html"
echo '<body>' >> "index.html"
echo '    <div id="app">' >> "index.html"
echo '        <h1 id="message">{{ message }}</h1>' >> "index.html"
echo '    </div>' >> "index.html"
echo '    <script>' >> "index.html"
echo '        const app = Vue.createApp({' >> "index.html"
echo '            data() {' >> "index.html"
echo '                return {' >> "index.html"
echo '                    message: "¡Hola Mundo con Vue.js!"' >> "index.html"
echo '                }' >> "index.html"
echo '            }' >> "index.html"
echo '        })' >> "index.html"
echo '        app.mount("#app")' >> "index.html"
echo '    </script>' >> "index.html"
echo '    <!-- Enlaces a los archivos JavaScript generados por el script -->' >> "index.html"
echo '    <script src="js/main.js"></script>' >> "index.html"
echo '    <script src="js/functions.js"></script>' >> "index.html"
echo '    <script src="js/animations.js"></script>' >> "index.html"
echo '</body>' >> "index.html"
echo '</html>' >> "index.html"
