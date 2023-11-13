Proceso numero_mayor
	Definir num1, num2 Como Entero;
	
	Limpiar Pantalla;
	Escribir 'Objetivo: Determinar el mayor de dos números';
	Escribir '';
	Escribir 'Digite los dos números a evaluar: ';
	
	Escribir 'Número 1: ' Sin Saltar;
	Leer num1;
	
	Escribir 'Número 2: ' Sin Saltar;
	Leer num2;
	
	Escribir '';
	
	Si num1 > num2 Entonces
		Escribir num1, ' Es mayor que ', num2;
	SiNo
		Escribir num2, ' Es mayor que ', num1;
	FinSi
FinProceso
