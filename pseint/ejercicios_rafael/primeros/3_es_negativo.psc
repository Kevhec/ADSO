Proceso es_negativo
	Definir num Como Entero;
	Definir esNegativo Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si el número provisto es negativo";
	
	Leer num;
	
	esNegativo = num < 0;
	
	Si esNegativo Entonces
		Escribir "El número es negativo";
	SiNo
		Escribir "El número es positivo";
	FinSi
FinProceso
