#!/bin/bash

# Create new CSS file for a specific screen size
create_css_file() {
    size="$1"
    filename="style-$size.css"
    touch "css/$filename"
    echo "@media (max-width: $size) {" >> "css/$filename"
    echo "    /* Your styles for max-width $size go here */" >> "css/$filename"
    echo "}" >> "css/$filename"
    echo "<link rel=\"stylesheet\" href=\"css/$filename\" media=\"(max-width: $size)\">" >> "index.html"
}

# Create CSS files for different screen sizes
create_css_file "768px"
create_css_file "1024px"
create_css_file "1920px"
