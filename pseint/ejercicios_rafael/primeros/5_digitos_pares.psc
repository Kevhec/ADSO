Proceso digitos_pares
	Definir num, division, digito Como Entero;
	Definir sonPares Como Logico;
	
	Limpiar Pantalla;
	
	Escribir "Objetivo: Determinar si los d�gitos de un n�mero de";
	Escribir "dos d�gitos son pares";
	
	Repetir
		Leer num;
		Si num < 9 O num > 100 Entonces
			Limpiar Pantalla;
			Escribir "El n�mero debe ser de dos d�gitos";
		FinSi
	Hasta Que num > 9 Y num < 100
	
	Limpiar Pantalla;
	
	division <- num;
	sonPares <- Verdadero;
	
	Mientras division <> 0 Hacer
		digito <- division % 10;
		division <- trunc(division / 10);
		
		Si digito % 2 <> 0 Entonces
			sonPares <- Falso;
		FinSi
	FinMientras
	
	
	Si sonPares Entonces
		Escribir "Los d�gitos de ", num, " son pares";
	SiNo
		Escribir "Los d�gitos de ", num, " no son pares";
	FinSi
FinProceso
