Proceso suma_dos_digitos
	Definir num, cifra, suma, i, division Como Entero;
	Leer num;
	
	division <- num;
	suma <- 0;
	
	Mientras division <> 0
		cifra <- division % 10;
		division <- trunc(division / 10);
		suma <- suma + cifra;
	FinMientras
	
	Escribir 'suma ', suma;
FinProceso
