Proceso numero_mayor
	Definir num1, num2 Como Entero;
	
	Limpiar Pantalla;
	Escribir 'Objetivo: Determinar el mayor de dos n�meros';
	Escribir '';
	Escribir 'Digite los dos n�meros a evaluar: ';
	
	Escribir 'N�mero 1: ' Sin Saltar;
	Leer num1;
	
	Escribir 'N�mero 2: ' Sin Saltar;
	Leer num2;
	
	Escribir '';
	
	Si num1 > num2 Entonces
		Escribir num1, ' Es mayor que ', num2;
	SiNo
		Escribir num2, ' Es mayor que ', num1;
	FinSi
FinProceso
