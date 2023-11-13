Proceso termina_en_4
	Definir num Como Entero;
	
	Limpiar Pantalla;
	Escribir "Objetivo: Determinar si el número";
	Escribir "ingresado por el usuario termina en 4";
	Escribir "";
	Escribir "Digite un número";
	
	Leer num;
	
	Si num % 10 == 4 Entonces
		Escribir "El número termina en 4";
	SiNo
		Escribir "El número no termina en 4";
	FinSi
FinProceso
