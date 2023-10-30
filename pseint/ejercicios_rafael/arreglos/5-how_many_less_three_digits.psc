// Leer 10 n�meros enteros, almacenarlos en un vector y determinar
// cu�ntos n�meros tienen, de los almacenados all�, menos de 3 d�gitos.

Proceso how_many_less_three_digits
	Definir nums, count, num, i Como Entero;
	Dimension nums[10];
	
	// Initialize counter state
	count <- 0;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 n�meros para determinar cu�ntos ";
		Escribir "tienen menos de tres d�gitos";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	Limpiar Pantalla;
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		num <- nums[i];
		
		// Check if number has less than three digits
		Si num < 100 Entonces
			count = count + 1;
		FinSi
	FinPara
	
	Escribir "";
	
	Si count > 1 Entonces
		Escribir "Se ingresaron ", count, " n�meros con menos de tres d�gitos.";
	FinSi
	
	Si count == 1 Entonces
		Escribir "Se ingres� ", count, " n�mero con menos de tres d�gitos.";
	FinSi
	
	Si count == 0 Entonces
		Escribir "No se ingresaron n�meros con menos de tres d�gitos.";
	FinSi
	
	Escribir "";
FinProceso
