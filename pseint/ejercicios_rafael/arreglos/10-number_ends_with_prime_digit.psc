// Leer 10 n�meros enteros, almacenarlos en un vector y determinar
// cu�ntos n�meros terminan en un d�gito primo.

Funcion return <- isPrimeNumber(num)
	Definir isPrime, return Como Logico;
	Definir i Como Entero;
	
	isPrime <- Verdadero;
	
	// Default 1 and 0 as not prime
	Si num == 1 O num == 0 Entonces
		isPrime <- Falso;
	FinSi
	
	// Check if there's a divisor of num between 1 and itself
	// If it is then num is not prime
	Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
		Si num % i == 0 Entonces
			isPrime <- Falso;
		FinSi
	FinPara
	
	return <- isPrime;
FinFuncion

Proceso number_ends_with_prime_digit
	Definir nums, i, count, num, lastDigit Como Entero;
	Dimension nums[10];
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 n�meros para determinar cu�les";
		Escribir "terminan en un d�gito primo";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	count <- 0;
	
	// Iterate array completely
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Select current number and extract last digit
		num <- nums[i];
		lastDigit <- num % 10;
		
		// Check if last digit is prime using a custom function,
		// then increment the counter
		Si isPrimeNumber(lastDigit) Entonces
			count <- count + 1;
		FinSi
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Si count == 0 Entonces
		Escribir "Ninguno de los n�meros ingresados termina en un d�gito primo";
	SiNo
		Si count == 1 Entonces
			Escribir "S�lo un n�mero termina en un d�gito primo";
		SiNo
			Escribir "En total, ", count, " n�meros terminan en un d�gito primo.";
		FinSi
	FinSi
	Escribir "";
FinProceso
