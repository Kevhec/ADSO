Proceso es_negativo
	Definir num Como Entero;
	Definir esNegativo Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si el n�mero provisto es negativo";
	
	Leer num;
	
	esNegativo = num < 0;
	
	Si esNegativo Entonces
		Escribir "El n�mero es negativo";
	SiNo
		Escribir "El n�mero es positivo";
	FinSi
FinProceso
