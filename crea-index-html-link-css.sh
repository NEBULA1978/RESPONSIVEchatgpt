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

# Create CSS files for different screen sizes
create_css_file "768px"
create_css_file "1024px"
create_css_file "1920px"

# Create the index.html file with the provided content and dynamically add CSS links
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
echo '</head>' >> "index.html"
echo '<body>' >> "index.html"
echo '</body>' >> "index.html"
echo '</html>' >> "index.html"
