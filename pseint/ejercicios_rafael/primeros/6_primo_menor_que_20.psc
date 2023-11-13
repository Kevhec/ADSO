Proceso primo_menor_que_20
	Definir num, i Como Entero;
	Definir esPrimo Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si n�mero de dos d�gitos";
	Escribir "menor que 20 es primo";
	
	Repetir
		Leer num;
		
		Si num > 20 Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser menor que 20";
		FinSi
		
		Si num < 10 Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser de dos d�gitos";
		FinSi
		
	Hasta Que num < 20 Y num > 9 
	
	
	esPrimo <- Verdadero;
	
	Para i <- 2 Hasta num - 1 Con Paso 1 Hacer
		Si num % i == 0 Entonces
			esPrimo <- Falso;
		FinSi
	FinPara
	
	Si esPrimo Entonces
		Escribir num, " es primo";
	SiNo
		Escribir num, " no es primo";
	FinSi
FinProceso
