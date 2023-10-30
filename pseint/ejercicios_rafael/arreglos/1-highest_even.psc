// Leer 10 enteros, almacenarlos en un vector y determinar
// en qu� posici�n del vector est� el mayor	n�mero par le�do.

Proceso highest_even
	Definir nums, pos, i, num, highest Como Entero;
	Dimension nums[10];
	
	// Fill the numbers array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 n�meros para determinar en ";
		Escribir "qu� posici�n est� el mayor n�mero par";
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
	Escribir "Digite 10 n�meros para determinar en ";
	Escribir "qu� posici�n est� el mayor n�mero par";
	Escribir "";
	
	Si pos <> -1 Entonces
		Escribir "El mayor n�mero par (", highest, ") se encuentra";
		Escribir "en la posici�n ", pos, ".";
	SiNo
		Escribir "No se ingresaron n�meros pares.";
	FinSi
	Escribir "";
FinProceso
