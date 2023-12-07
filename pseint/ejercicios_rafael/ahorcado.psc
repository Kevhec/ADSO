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
	Escribir "       " Sin Saltar;
	Para i <- 0 Hasta long - 1 Con Paso 1 Hacer
		letra <- matriz[i, 0];
		Si matriz[i, 1] == 'si' Entonces
			Escribir " ", letra, " " Sin Saltar;
		SiNo
			Escribir " _ " Sin Saltar;
		FinSi
	FinPara
	Escribir "";
FinFuncion

Funcion dibujarEncabezado
	Limpiar Pantalla;
	Escribir "*------------------------*";
	Escribir "|   JUEGO DEL AHORCADO   |";
	Escribir "*------------------------*";
FinFuncion

Funcion dibujarVector(vector, dim)
	Definir i Como Entero;
	Para i <- 0 Hasta dim - 1 Con Paso 1 Hacer
		Escribir vector[i];
	FinPara
FinFuncion

Funcion dibujarAhorcado(fallos)
	Definir ahorcadoFrame0, ahorcadoFrame1, ahorcadoFrame2, ahorcadoFrame3 Como Caracter;

	Dimension ahorcadoFrame0[9];
	ahorcadoFrame0[0] <- "           ______";
	ahorcadoFrame0[1] <- "          |/     |";
	ahorcadoFrame0[2] <- "          |      ";
	ahorcadoFrame0[3] <- "          |";
	ahorcadoFrame0[4] <- "          |";
	ahorcadoFrame0[5] <- "          |";
	ahorcadoFrame0[6] <- "          |";
	ahorcadoFrame0[7] <- "          |";
	ahorcadoFrame0[8] <- "        __|__";
	
	Dimension ahorcadoFrame1[9];
	ahorcadoFrame1[0] <- "           ______";
	ahorcadoFrame1[1] <- "          |/     |";
	ahorcadoFrame1[2] <- "          |     (_)";
	ahorcadoFrame1[3] <- "          |";
	ahorcadoFrame1[4] <- "          |";
	ahorcadoFrame1[5] <- "          |";
	ahorcadoFrame1[6] <- "          |";
	ahorcadoFrame1[7] <- "          |";
	ahorcadoFrame1[8] <- "        __|__";
	
	Dimension ahorcadoFrame2[9];
	ahorcadoFrame2[0] <- "           ______";
	ahorcadoFrame2[1] <- "          |/     |";
	ahorcadoFrame2[2] <- "          |     (_)";
	ahorcadoFrame2[3] <- "          |      |";
	ahorcadoFrame2[4] <- "          |      |";
	ahorcadoFrame2[5] <- "          |";
	ahorcadoFrame2[6] <- "          |";
	ahorcadoFrame2[7] <- "          |";
	ahorcadoFrame2[8] <- "        __|__";
	
	Dimension ahorcadoFrame3[9];
	ahorcadoFrame3[0] <- "           ______";
	ahorcadoFrame3[1] <- "          |/     |";
	ahorcadoFrame3[2] <- "          |     (_)";
	ahorcadoFrame3[3] <- "          |     \|/";
	ahorcadoFrame3[4] <- "          |      |";
	ahorcadoFrame3[5] <- "          |     / \";
	ahorcadoFrame3[6] <- "          |";
	ahorcadoFrame3[7] <- "          |";
	ahorcadoFrame3[8] <- "        __|__";
	
	// Dibujar ahorcado según fallos
	Segun fallos Hacer
		1:
			dibujarVector(ahorcadoFrame1, 9);
		2:
			dibujarVector(ahorcadoFrame2, 9);
		3:
			dibujarVector(ahorcadoFrame3, 9);
		De Otro Modo:
			dibujarVector(ahorcadoFrame0, 9);
	FinSegun
FinFuncion

Proceso ahorcado
	Definir palabra, palabraMinuscula, letras, letra, letraMinuscula Como Caracter;
	Definir nuevaLinea, ultimaLetra Como Caracter;
	Definir longitudPalabra, i, fallos, turno Como Entero;
	Definir haFallado, victoria, terminado Como Logico;
	
	nuevaLinea <- "";
	
	dibujarEncabezado();
	Escribir "Escribe la palabra secreta";

	Leer palabra;
	Limpiar Pantalla;
	
	// Estado inicial
	fallos <- 0;
	victoria <- Falso;
	terminado <- Falso;
	ultimaLetra <- '';
	turno <- 0;
	
	// Trabajar con la palabra minúscula para simplificar la lógica
	palabraMinuscula <- Minusculas(palabra);
	
	// Determinar longitud para crear dinamicamente la matriz
	longitudPalabra <- Longitud(palabraMinuscula);

	Dimension Letras[longitudPalabra, 2];
	
	// Llenar matriz n x 2 donde cada elemento guarda la letra y si fue adivinada o no
	Para i <- 0 Hasta longitudPalabra - 1 Con Paso 1 Hacer
		// Obtener cada letra de la palabra
		letra <- Subcadena(palabraMinuscula, i, i);
		
		// Añadir letra a primer posición del elemento
		Letras[i, 0] <- letra;
		
		// Estado inicial de no adivinado a cada palabra
		Letras[i, 1] <- 'no';
	FinPara
	
	// Ejecutar juego hasta que termine por tres fallos o por victoria
	Mientras !terminado
		// Dibujar interfaz
		dibujarEncabezado();
		dibujarAhorcado(fallos);
		Escribir nuevaLinea;
		imprimirPalabra(Letras, longitudPalabra);
		Escribir nuevaLinea;
		Escribir "Turno: ", turno Sin Saltar;
		Escribir "   Última letra: ", ultimaLetra;
		Escribir "   ", 3 - fallos, " Intentos restantes",;
		Escribir "     Escribe una letra";
		
		// Leer nueva letra y actualizar estado
		Escribir Sin Saltar "   ";
		Leer letra;
		ultimaLetra <- letra;
		
		// Letra a minúscula para simplificar lógica
		letraMinuscula <- Minusculas(letra);
		
		// Definir si la letra es parte de la palabra secreta
		haFallado <- revisarLetra(Letras, longitudPalabra, letraMinuscula);
		
		Si haFallado Entonces
			fallos <- fallos + 1;
			Escribir "";
			Si fallos >= 3 Entonces
				terminado <- Verdadero;
			FinSi
		SiNo
			victoria <- revisarVictoria(Letras, longitudPalabra);
			Si victoria Entonces
				terminado <- Verdadero;
			FinSi
		FinSi
		
		// Actualizar turno
		turno <- turno + 1;
	FinMientras
	
	// Interfaz de game over
	dibujarEncabezado();
	dibujarAhorcado(fallos);
	Si victoria Entonces
		Escribir nuevaLinea;
		Escribir "      ¡Felicidades!";
		Escribir "Adivinaste la palabra: ", palabra;
		Escribir nuevaLinea;
	SiNo
		Escribir nuevaLinea;
		Escribir "         RIP";
		Escribir nuevaLinea;
	FinSi
FinProceso
