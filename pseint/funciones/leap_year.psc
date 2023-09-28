Funcion result <- isLeap(year)
	Definir result Como Logico;
	result <- (year % 4 == 0 y year % 100 <> 0) o (year % 100 == 0 y year % 400 == 0);
FinFuncion

Proceso leap_year
	Definir year Como Entero;
	Definir result Como Logico;
	
	Limpiar Pantalla;
	
	Escribir '|---------------------------------|';
	Escribir '| Determina si un año es biciesto |';
	Escribir '|---------------------------------|';
	Escribir '|    Digita el año a comprobar    |';
	Escribir '|---------------------------------|';
	leer year;
	
	result = isLeap(year);
	
	Escribir '|---------------------------------|';
	
	Si result == Verdadero Entonces
		Escribir '|     El año ', year, ' es biciesto     |';
	SiNo
		Escribir '|   El año ', year, ' no es biciesto    |';
	FinSi
	
	Escribir '|---------------------------------|';
FinProceso
