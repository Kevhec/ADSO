Funcion result <- factorial(num)
	Definir i, result Como Entero;
	
	result <- 1;
	
	Para i <- 2 Hasta num Con Paso 1 Hacer
		result <- result * num;
	FinPara
FinFuncion

Proceso calcular_factorial
	Definir num, result Como Entero;
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|    Calcular el factorial de n   |';
	Escribir '|---------------------------------|';
	Escribir '|         Digita el n�mero        |';
	Escribir '|---------------------------------|';
	Escribir '';
	
	Leer num;
	
	result <- factorial(num);
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|    Calcular el factorial de n   |';
	Escribir '|---------------------------------|';
	Escribir '|            n�mero: ', num, '            |';
	Escribir '|---------------------------------|';
	Escribir '';
	Escribir 'El factorial de ', num, ' es ', result, '.';
	Escribir '';
FinProceso
