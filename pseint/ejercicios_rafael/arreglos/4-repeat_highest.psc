// Leer 10 números enteros, almacenarlos en un vector y 
// determinar cuántas veces está repetido el mayor.

Algoritmo repeat_highest
    Definir nums, i, num, highest, rep Como Entero;
    Dimension nums[10];
	
	// Initialize rep state on 0 as number has not been
	// found yet
	rep = 0;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar cuántas ";
		Escribir "veces se repite el mayor de todos";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Access current number
		num = nums[i];
		
		// Check if number is the highest so far
		Si num > highest Entonces
			// Store new highest value
			highest = num;
			
			// Reset rep count
			rep = 0;
		FinSi
		
		// Check if highest number appeared again and increment
		// rep
		Si num == highest Entonces
			rep = rep + 1;
		FinSi
	FinPara

	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Digite 10 números para determinar cuántas ";
	Escribir "veces se repite el mayor de todos";
	Escribir "";

	Escribir 'El número mayor (', highest, ') se repite ', rep, ' veces.';
FinAlgoritmo