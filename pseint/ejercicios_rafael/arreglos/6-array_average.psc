// Leer 10 números enteros, almacenarlos en un vector y determinar
// a cuánto es igual el promedio entero de los datos del vector

Proceso promedio_arreglo
	Definir nums, sum, num, i Como Entero;
	Dimension nums[10];
	
	// Initialize counter state
	sum <- 0;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar el";
		Escribir "promedio de todos";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	// Every element on the array is added to the accumulator "sum"
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		sum <- sum + nums[i];
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "El promedio entero de los elementos del vector es: ";
	Escribir "";
	// As the int average is requested the trunc function is needed
	// also 10 can be used as denominator due to the nature of the exercise
	Escribir "-> ", trunc(sum / 10);
	Escribir "";
FinProceso
