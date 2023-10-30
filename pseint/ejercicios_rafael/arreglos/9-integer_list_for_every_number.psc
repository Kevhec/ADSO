// Leer 10 números enteros, almacenarlos en un vector y mostrar en pantalla
// todos los enteros comprendidos entre 1 y cada uno de los números almacenados en el vector

Proceso integer_list_for_every_number
	Definir nums, i, num, j, loopDirection Como Entero;
	Dimension nums[10];
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para generar una lista";
		Escribir "desde uno hasta cada número";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Secuencias:";
	Escribir "";
	
	// Iterate over every number on the array
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Select the current number
		num <- nums[i];
		
		// Default loop direction to positive region
		loopDirection <- 1;
		
		// Invert loopDirection in case the number is negative
		Si num < 1 Entonces
			loopDirection <- -1;
		FinSi
		
		// Create a list which steps are conditioned by the loopDirection variable.
		// This in order to create the lists from 1 to any negative integer.
		Escribir "(", num, "): " Sin Saltar;
		Para j <- 1 Hasta num Con Paso loopDirection Hacer
			Si j <> num Entonces
				Escribir j, ", " Sin Saltar;
			SiNo
				Escribir num, ".";
			FinSi
		FinPara
	FinPara
	Escribir "";
FinProceso
