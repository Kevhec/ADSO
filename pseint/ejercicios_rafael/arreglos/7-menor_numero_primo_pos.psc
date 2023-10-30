// Leer 10 n�meros enteros, almacenarlos en un vector y determinar
// en qu� posici�n est� el menor n�mero primo.

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

Proceso menor_numero_primo_pos
	Definir nums, input, pos, smallestPrime, num, i Como Entero;
	Dimension nums[10];
	
	// Initialize pos as -1 in case not prime number is found;
	pos <- -1;
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 n�meros para determinar el";
		Escribir "menor n�mero primo";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer input;
		nums[i] <- input;
	FinPara
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Focus current number;
		num <- nums[i];
		
		// Check if num is prime and if it's smaller than the current
		// smallest value, if it is not assigned yet use the -1 indicator
		// of pos for num to be the first value of smallestPrime
		Si isPrimeNumber(num) Y ((num < smallestPrime) O pos == -1) Entonces
			pos <- i;
			smallestPrime <- num;
		FinSi
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	Si pos <> -1 Entonces
		Escribir "El menor n�mero primo (", smallestPrime, ") ", "se encuentra";
		Escribir "en la posici�n ", pos, ".";
	SiNo
		Escribir "No se ingres� ning�n n�mero primo.";
	FinSi
	Escribir "";
FinProceso
