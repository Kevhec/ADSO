// Function defined to calc fibonacci sequence numbers
// and update them on an array of provided length
Funcion calcFibonacci (arr, length)
	Definir i Como Entero;
	
	// Manually input the first two numbers of fibonacci's sequence
	// to allow the calculation of the next elements
	arr[0] <- 0;
	arr[1] <- 1;
	
	// Iterate the provided array and fill it's elements
	// with the corresponding fibonacci number using the series
	// definition Fn = Fn-1 + Fn-2 for n > 1
	Para i <- 2 Hasta length - 1 Hacer
		arr[i] <- arr[i-1] + arr[i-2];
	FinPara
FinFuncion

Proceso vector_fibonacci
	Definir fibonacci, i Como Entero;
	Dimension fibonacci[10];

	calcFibonacci(fibonacci, 10);

	Escribir 'Los primeros 10 números de la secuencia de fibonacci son:';
	Para i <- 0 Hasta 9 Hacer
		Si i < 9 Entonces
			Escribir fibonacci[i], ', ' Sin Saltar;
		SiNo
			Escribir fibonacci[i], '.';
		FinSi
	FinPara
FinProceso
