Funcion result <- isPrime(num)
	Definir result Como Logico;
	Definir i Como Entero;

	result <- Verdadero;

	Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
		Si num % i == 0 Entonces
			result <- Falso;
		FinSi
	FinPara
FinFuncion

Proceso numeros_primos
	Definir num, i Como Entero;
	Definir result Como Logico;
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|      Números primos hasta n     |';
	Escribir '|---------------------------------|';
	Escribir '|         Digita el número        |';
	Escribir '|---------------------------------|';
	Escribir '';
	
	Leer num;
	Escribir '';

	Escribir 'Los números primos desde 1 hasta ', num, ' son:';
	Para i <- 1 Hasta num - 1 Con Paso 1 Hacer
		result = isPrime(i);
		
		Si i == num - 1 Entonces
			Escribir i, '.';
		SiNo
			Si result Entonces
				Escribir i, ', ' Sin Saltar;
			FinSi
		FinSi
	FinPara
	Escribir '';
FinProceso
