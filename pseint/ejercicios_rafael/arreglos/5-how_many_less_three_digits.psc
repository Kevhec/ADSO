// Leer 10 números enteros, almacenarlos en un vector y determinar
// cuántos números tienen, de los almacenados allí, menos de 3 dígitos.

Proceso how_many_less_three_digits
	Definir nums, count, num, i Como Entero;
	Dimension nums[10];
	
	// Initialize counter state
	count <- 0;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar cuántos ";
		Escribir "tienen menos de tres dígitos";
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
		Escribir "Se ingresaron ", count, " números con menos de tres dígitos.";
	FinSi
	
	Si count == 1 Entonces
		Escribir "Se ingresó ", count, " número con menos de tres dígitos.";
	FinSi
	
	Si count == 0 Entonces
		Escribir "No se ingresaron números con menos de tres dígitos.";
	FinSi
	
	Escribir "";
FinProceso
