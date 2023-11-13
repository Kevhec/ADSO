Proceso digitos_iguales
	Definir num, division, digito, digitoPrevio, ciclos Como Entero;
	Definir sonIguales Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si los d�gitos de un n�mero de dos cifras son iguales";
	
	Repetir
		Leer num;
		Si num < 9 O num > 100 Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser de dos d�gitos";
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
		Escribir "Los d�gitos de ", num, " son iguales.";
	SiNo
		Escribir "Los d�gitos de ", num, " no son iguales.";
	FinSi
FinProceso
