Proceso digitos_primos
	Definir num, division, digito, i Como Entero;
	Definir sonPrimos Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si los dígitos de un número de dos cifras son primos";

	Repetir
		Leer num;
		Si num < 9 O num > 100 Entonces
			Limpiar Pantalla;
			Escribir "El número debe ser de dos dígitos";
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
		Escribir "Los dígitos de ", num, " son primos";
	SiNo
		Escribir "Los dígitos de ", num, " no son primos";
	FinSi
FinProceso
