Proceso es_positivo
	Definir num Como Entero;
	Definir resultado Como Caracter;
	
	Escribir 'Digite un número para determinar si es positivo o negativo';
	Leer num;
	
	Si num > 0 Entonces
		resultado <- 'positivo';
	SiNo
		resultado <- 'negativo';
	FinSi
	
	Escribir 'El número ', num, ' es ' resultado;
FinProceso
