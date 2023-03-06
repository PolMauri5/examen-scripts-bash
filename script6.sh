#Calculadora

#!/bin/bash

echo "Ingresa el primer número:"
read num1

echo "Ingresa el segundo número:"
read num2

echo "Selecciona la operación que deseas realizar: "
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read opcion

case $opcion in
    1)
        resultado=$(echo "scale=2; $num1 + $num2" | bc)
        operacion="+"
        ;;
    2)
        resultado=$(echo "scale=2; $num1 - $num2" | bc)
        operacion="-"
        ;;
    3)
        resultado=$(echo "scale=2; $num1 * $num2" | bc)
        operacion="*"
        ;;
    4)
        resultado=$(echo "scale=2; $num1 / $num2" | bc)
        operacion="/"
        ;;
    *)
        echo "Opción inválida"
        exit 1
        ;;
esac

echo "$num1 $operacion $num2 = $resultado"

