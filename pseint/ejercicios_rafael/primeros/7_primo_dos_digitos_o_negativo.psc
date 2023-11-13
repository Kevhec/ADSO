Proceso primo_dos_digitos_o_negativo
	Definir num, i Como Entero;
	Definir esPrimo, esNegativo Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si n�mero de dos d�gitos es primo o negativo";
	
	Repetir
		Leer num;
		
		Si (num < 10 O num > 99) y !(num < 0) Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser de dos d�gitos o negativo.";
		FinSi
		
	Hasta Que num < 100 Y num > 9 O num < 0
	
	esNegativo <- num < 0;
	esPrimo <- Verdadero Y !esNegativo;
	
	Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
		Si num % i == 0 Entonces
			esPrimo <- Falso;
		FinSi
	FinPara
	
	Si esPrimo Entonces
		Escribir num, " es primo.";
	FinSi
		
	Si !esPrimo Y !esNegativo Entonces
		Escribir num, " no es primo.";
	FinSi
	
	Si esNegativo Entonces
		Escribir num, " es negativo.";
	FinSi
FinProceso
