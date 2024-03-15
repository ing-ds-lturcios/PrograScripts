#!/bin/bash
echo "Hola mundo"
declare -a operaciones
operaciones=(sumar restar multiplicar dividir potencia raiz salir)
select operacion in ${operaciones[*]};
do case $operacion in sumar)
read -p "Dime un número: " num1
read -p "Dime otro número: " num2
echo "La suma de $num1 y $num2 es: $(($num1+$num2))";;
restar)
read -p "Dime un número: " num1
read -p "Dime otro número: " num2
echo "La resta de $num1 y $num2 es: $(($num1-$num2))";;
multiplicar)
read -p "Dime un número: " num1
read -p "Dime otro número: " num2
echo "La multiplicación de $num1 y $num2 es: $(($num1*$num2))";;
dividir)
read -p "Dime un número: " num1
read -p "Dime otro número: " num2
echo "La división de $num1 y $num2 es: $(($num1/$num2))";;
potencia)
read -p "Dime un número: " num1
read -p "Dime otro número: " num2
echo "La potencia de $num1 elevado a $num2 es: $(($num1**$num2))";;
raiz)
read -p "Dime un número: " num1
raiz=$(echo "scale=2; sqrt($num1)" | bc -l)
echo "La raíz cuadrada de $num1 es: $raiz";;
salir)
echo "Adiós"
break;;
*)
echo "Opción no válida";;
esac
done
