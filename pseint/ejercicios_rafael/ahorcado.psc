Funcion fallo <- revisarLetra(matriz, long, letra)
	Definir i Como Entero;
	Definir fallo Como Logico;
	fallo <- Verdadero;
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		Si matriz[i, 0] == letra Entonces
			matriz[i, 1] <- 'si';
			fallo <- Falso;
		FinSi
	FinPara
FinFuncion

Funcion gano <- revisarVictoria(matriz, long)
	Definir gano Como Logico;
	Definir i Como Entero;

	gano <- verdadero;
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		Si matriz[i, 1] == 'no' Entonces
			gano <- falso;
		FinSi
	FinPara
FinFuncion

funcion imprimirPalabra(matriz, long)
	Definir letra Como Caracter;
	Definir i Como Entero;
	Escribir Sin Saltar "Palabra: ";
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		letra <- matriz[i, 0];
		Si matriz[i, 1] == 'si' Entonces
			Escribir " ", letra, " " Sin Saltar;
		SiNo
			Escribir " _ " Sin Saltar;
		FinSi
	FinPara
FinFuncion

Proceso ahorcado
	Definir palabra, palabraMinuscula, letras, letra, letraMinuscula Como Caracter;
	Definir longitudPalabra, i, fallos Como Entero;
	Definir haFallado, victoria Como Logico;
	
	Limpiar Pantalla;
	Escribir "JUEGO DEL AHORCADO";
	Escribir "Escriba la palabra secreta";
	Leer palabra;
	Limpiar Pantalla;
	
	fallos <- 0;
	victoria <- Falso;
	
	palabraMinuscula <- Minusculas(palabra);
	
	longitudPalabra <- Longitud(palabraMinuscula);

	Dimension Letras[longitudPalabra, 2];
	
	Para i <- 0 Hasta longitudPalabra - 1 Con Paso 1 Hacer
		letra <- Subcadena(palabraMinuscula, i, i);
		Letras[i, 0] <- letra;
		Letras[i, 1] <- 'no';
	FinPara

	Repetir
		Escribir "JUEGO DEL AHORCADO";
		Escribir "Intentos restantes: ", 3 - fallos;
		Escribir "Escriba una letra";
		imprimirPalabra(Letras, longitudPalabra);
		Escribir "";
		Leer letra;
		letraMinuscula <- Minusculas(letra);
		
		haFallado <- revisarLetra(Letras, longitudPalabra, letraMinuscula);
		
		Si haFallado Entonces
			fallos <- fallos + 1;
			Escribir "La letra ", letra, " no existe";
			Escribir "";
		SiNo
			victoria <- revisarVictoria(Letras, longitudPalabra);
		FinSi
	Hasta Que fallos >= 3 O victoria == Verdadero;
	
	Limpiar Pantalla;
	Si victoria Entonces
		Escribir "";
		Escribir "Felicidades, adivinó la palabra: ", palabra;
		Escribir "";
	SiNo
		Escribir "";
		Escribir "Perdió JAJAJA";
		Escribir "";
	FinSi
FinProceso
