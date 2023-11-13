Funcion return <- isPrimeNumber(num)
	Definir isPrime, return Como Logico;
	Definir i Como Entero;
	
	isPrime <- Verdadero;
	
	// Default all numbers before 1, including negatives, as non prime
	Si num <= 1 Entonces
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

Funcion return <- countEvenDigits(num)
	Definir divSoFar, count, digit, return Como Entero;
	
	// Initialize as the number provided, on every iteration
	// the number will have one digit less on the right side
	// so every of them can be extracted
	divSoFar <- num;
	count <- 0;
	
	Mientras divSoFar <> 0 Hacer
		digit <- divSoFar % 10;
		
		Si digit % 2 == 0 Entonces
			count <- count + 1;
		FinSi
		
		// Trunc is used as only the integer part of the number is needed
		divSoFar <- Trunc(divSoFar / 10);
	FinMientras
	
	return <- count;
FinFuncion

// Leer 10 números enteros, almacenarlos en un vector y determinar
// en qué posición se encuentra el número primo con mayor cantidad de dígitos pares

// Template list of 10 prime numbers: 1223, 1181, 1031, 619, 269, 89, 8849,7907, 8069, 10667

Proceso prime_with_the_most_even_digits
	Definir nums, i, num, selectedPrime, numEvenDigits Como Entero;
	Dimension nums[10], selectedPrime[2];
	
	// Fill array with user's input
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		Limpiar Pantalla;
		
		Escribir "";
		Escribir "Digite 10 números para determinar cuál es";
		Escribir "el que contiene la mayor cantidad de dígitos pares";
		Escribir "";
		Escribir "Restantes: ", 10 - i;
		
		Leer nums[i];
	FinPara
	
	// 0 index -> Number, default as -1 for "not found" value
	// 1 index -> Ammount of even digits on it
	selectedPrime[0] <- -1;
	selectedPrime[1] <- 0;
	
	Para i <- 0 Hasta 9 Con Paso 1 Hacer
		// Select current number
		num <- nums[i];
		
		// If number is the same yet selected avoid unnecessary execution
		// if it is not then make sure is a prime number and do all the checking
		Si num <> selectedPrime[0] Y isPrimeNumber(num) Entonces
			numEvenDigits <- countEvenDigits(num);
			
			Si numEvenDigits > selectedPrime[1] Entonces
				selectedPrime[0] <- num;
				selectedPrime[1] <- numEvenDigits;
			FinSi
		FinSi
	FinPara
	
	Limpiar Pantalla;
	
	Escribir "";
	
	Si selectedPrime[0] == -1 O selectedPrime[1] == 0 Entonces
		Escribir "No se encontró algún número primo con dígitos pares en los ingresados";
	FinSi
	
	Si selectedPrime[1] <> 0 Entonces
		Escribir "El número primo con mayor cantidad de dígitos pares";
		Si selectedPrime[1] <> 1 Entonces
			Escribir "es ", selectedPrime[0], " con ", selectedPrime[1], " dígitos pares.";
		SiNo
			Escribir "es ", selectedPrime[0], " con ", selectedPrime[1], " dígito par.";
		FinSi
	FinSi
	
	Escribir "";
FinProceso
