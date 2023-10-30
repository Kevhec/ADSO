// Leer 10 enteros, almacenarlos en un vector y determinar
// en qué posición del vector está el mayor	número par leído.

Proceso highest_even
	Definir nums, pos, i, num, highest Como Entero;
	Dimension nums[10];
	
	// Fill the numbers array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar en ";
		Escribir "qué posición está el mayor número par";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	// Initialize "pos" as -1 for not found state
	pos = -1;
	
	// Iterate the array looking for even numbers while checking
	// if they are the highest to update the program's state
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		num = nums[i];
		Si num % 2 == 0 y num > highest Entonces
			pos = i;
			highest = num;
		FinSi
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Digite 10 números para determinar en ";
	Escribir "qué posición está el mayor número par";
	Escribir "";
	
	Si pos <> -1 Entonces
		Escribir "El mayor número par (", highest, ") se encuentra";
		Escribir "en la posición ", pos, ".";
	SiNo
		Escribir "No se ingresaron números pares.";
	FinSi
	Escribir "";
FinProceso
