Proceso digitos_primos
	Definir num, division, digito, i Como Entero;
	Definir sonPrimos Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si los d�gitos de un n�mero de dos cifras son primos";

	Repetir
		Leer num;
		Si num < 9 O num > 100 Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser de dos d�gitos";
		FinSi
	Hasta Que num > 9 Y num < 100
	
	division <- num;
	sonPrimos <- Verdadero;
	
	Mientras division <> 0 Hacer
		digito <- division % 10;
		division <- trunc(division / 10);
		
		Para i <- 2 Hasta digito - 1 Con Paso 1 Hacer
			Si num % i == 0 Entonces
				sonPrimos <- Falso;
			FinSi
		FinPara
	FinMientras
	
	Si sonPrimos Entonces
		Escribir "Los d�gitos de ", num, " son primos";
	SiNo
		Escribir "Los d�gitos de ", num, " no son primos";
	FinSi
FinProceso
