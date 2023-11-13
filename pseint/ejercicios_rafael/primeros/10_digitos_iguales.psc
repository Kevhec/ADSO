Proceso digitos_iguales
	Definir num, division, digito, digitoPrevio, ciclos Como Entero;
	Definir sonIguales Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si los dígitos de un número de dos cifras son iguales";
	
	Repetir
		Leer num;
		Si num < 9 O num > 100 Entonces
			Limpiar Pantalla;
			Escribir "El número debe ser de dos dígitos";
		FinSi
	Hasta Que num > 9 Y num < 100
	
	division <- num;
	sonIguales <- Verdadero;
	ciclos <- 0;
	
	Mientras division <> 0 Hacer
		digito <- division % 10;
		division <- trunc(division / 10);
		
		Si digitoPrevio <> digito Y ciclos > 0 Entonces
			sonIguales <- Falso;
		FinSi
		
		digitoPrevio = digito;
		ciclos <- ciclos + 1;
	FinMientras
	
	Si sonIguales Entonces
		Escribir "Los dígitos de ", num, " son iguales.";
	SiNo
		Escribir "Los dígitos de ", num, " no son iguales.";
	FinSi
FinProceso
