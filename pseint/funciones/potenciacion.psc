Funcion result <- potenciation(base, exponent)
	Definir result Como Entero;
	result <- base ^ exponent;
FinFuncion

Proceso potenciacion
	Definir base, exponent, result Como Entero;
	
	base = 0;
	exponent = 0;
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|      Elevar un número a un      |';
	Escribir '|         exponente dado          |';
	Escribir '|---------------------------------|';
	Escribir '|       base: ', base, ' exponente: ', exponent, '      |';
	Escribir '|---------------------------------|';
	Escribir '|          Digita la base         |';
	Escribir '|---------------------------------|';
	Escribir '';
	
	Leer base;
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|      Elevar un número a un      |';
	Escribir '|         exponente dado          |';
	Escribir '|---------------------------------|';
	Escribir '|       base: ', base, ' exponente: ', exponent, '      |';
	Escribir '|---------------------------------|';
	Escribir '|       Digita el exponente       |';
	Escribir '|---------------------------------|';
	Escribir '';
	
	Leer exponent;
	
	result = potenciation(base, exponent);
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|      Elevar un número a un      |';
	Escribir '|         exponente dado          |';
	Escribir '|---------------------------------|';
	Escribir '|       base: ', base, ' exponente: ', exponent, '      |';
	Escribir '|---------------------------------|';
	Escribir '';
	Escribir 'Resultado: ', result;
	Escribir '';
	
FinProceso
