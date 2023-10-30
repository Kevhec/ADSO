// Leer 10 números enteros, almacenarlos en un vector y determinar
// si existe al menos un número repetido.

Proceso is_unique_array
	Definir nums, notUniqueValue, i, j Como Entero;
	Definir isNotUnique Como Logico;
	Dimension nums[10];
	
	// Initialize isNotUnique to track if an element is more than once
	// in the array
	isNotUnique <- Falso;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar el";
		Escribir "si almenos uno se repite";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	// Iterate over the array
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Check to avoid unnecessary iterations
		Si !isNotUnique Entonces
			// Initialize j as i + 1 to compare every number that follows the current,
			// selected by nums[i], and avoid re-comparing previous numbers again
			Para j <- (i + 1) Hasta 9 Con Paso 1 Hacer
				Si nums[i] == nums[j] Entonces
					isNotUnique <- Verdadero;
				FinSi
			FinPara
		FinSi
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Si isNotUnique Entonces
		Escribir "Existe almenos un elemento repetido en el arreglo";
	SiNo
		Escribir "Todos los elementos del arreglo son únicos";
	FinSi
	Escribir "";
FinProceso
