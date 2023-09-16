#!/bin/bash

while true; do
    clear
    echo "Selecciona una opción:"
    echo "1. Ejecutar crea-index-html-link-css-js-vue3-componente.sh"
    echo "2. Ejecutar crea-index-html-link-css-js-vue3-componentes.sh"
    echo "3. Ejecutar crea-index-html-link-css-js-vue3.sh"
    echo "4. Ejecutar crea-index-html-link-css-js.sh"
    echo "5. Ejecutar crea-index-html-link-css.sh"
    echo "6. Ejecutar crea-css.sh"
    echo "7. Ejecutar crea-js.sh"
    echo "8. Ejecutar crea-vue3-componente.sh"
    echo "9. Ejecutar index.html"
    echo "10. Ejecutar indexvue.html"
    echo "0. Salir"

    read -p "Ingresa el número de la opción deseada: " opcion

    case $opcion in
        1)
            ./crea-index-html-link-css-js-vue3-componente.sh &
            ;;
        2)
            ./crea-index-html-link-css-js-vue3-componentes.sh &
            ;;
        3)
            ./crea-index-html-link-css-js-vue3.sh &
            ;;
        4)
            ./crea-index-html-link-css-js.sh &
            ;;
        5)
            ./crea-index-html-link-css.sh &
            ;;
        6)
            ./crea-css.sh &
            ;;
        7)
            ./crea-js.sh &
            ;;
        8)
            ./crea-vue3-componente.sh &
            ;;
        9)
            xdg-open index.html &
            ;;
        10)
            xdg-open indexvue.html &
            ;;
        0)
            echo "Saliendo del menú."
            exit
            ;;
        *)
            echo "Opción no válida. Introduce un número válido."
            ;;
    esac

    read -p "Presiona Enter para continuar..."
done
