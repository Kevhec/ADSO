// Leer 10 números enteros, almacenarlos en un vector y
// determinar en qué posiciones se encuentran los números terminados en 4

Proceso pos_of_ending_in_four
	Definir nums, num, i Como Entero;
	Definir atLeastOne Como Logico;
	Dimension nums[10];
	
	// Default to false in case not ending 4 number is found
	atLeastOne = Falso;
	
	// Fill the numbers array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar en ";
		Escribir "qué posición están los terminados en 4";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Los números terminados en 4 están en las";
	Escribir "posiciones:";
	Escribir "";
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Select current number
		num = nums[i];
		
		// Check if number ends in 4
		Si num % 10 == 4 Entonces
			
			// Update to true only if not number has been
			// found before
			Si atLeastOne <> Verdadero
				atLeastOne = Verdadero;
			FinSi
			
			Escribir " ", i, " (", num, ")";
		FinSi
	FinPara
	
	Si atLeastOne == Falso Entonces
		Limpiar Pantalla;
		Escribir "";
		Escribir "No se encontró ningún número terminado en 4.";
	FinSi
	
	Escribir "";
FinProceso
