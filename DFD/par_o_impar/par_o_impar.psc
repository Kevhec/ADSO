Proceso par_o_impar
	Definir num Como Entero;
	
	Escribir 'Ingrese un número para determinar si es par o impar';
	Leer num;
	
	Si num MOD 2 = 0 Entonces
		Escribir 'El número ', num, ' es par';
	SiNo
		Escribir 'El número ', num, ' es impar';
	FinSi
	
FinProceso
