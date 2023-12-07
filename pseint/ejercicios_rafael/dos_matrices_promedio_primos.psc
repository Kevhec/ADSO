funcion visualizarMatriz(matriz, nombre)
	Escribir nombre;
	Definir i, j, indiceActual, num Como Entero;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			num <- matriz[i, j];
			Si j <> 4 Entonces
				Escribir " ", num, " |" Sin Saltar;
			SiNo
				Escribir " ", num;
			FinSi
		FinPara
	FinPara
FinFuncion

funcion llenarMatriz(matriz, nombre)
	Definir num, i, j Como Entero; 
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir "";
			Escribir "Número en la posición ", i + 1, "x", j + 1, " de la", nombre;
			Leer matriz[i, j];
			Limpiar Pantalla;
			visualizarMatriz(matriz, nombre);
		FinPara
	FinPara
FinFuncion

Funcion esPrimo <- esNumPrimo (num)
	
FinFuncion

funcion promedio <- promedioDePrimos(matriz, cols)
	Definir i, sumatoria, num Como Entero;
	sumatoria <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		mayorPrimo <- 0;
		Para j <- 0 Hasta 4 Con Paso 1 Hacer
			Si cols Entonces
				num <- matriz[j, i];
			SiNo
				num <- matriz[i, j];
			FinSi
		FinPara
	FinPara
FinFuncion

Proceso dos_matrices
	Dimension matriz1[5, 5];
	Dimension matriz2[5, 5];
	Definir matriz1, matriz2 Como Entero;

	Escribir "Promedio de primos de columna filas en dos matrices 5x5";
	
	Escribir "Ingresar datos de la primer matriz";
	llenarMatriz(matriz1, ' Matriz 1');
	llenarMatriz(matriz2, ' Matriz 2');
	
	Limpiar Pantalla;
	visualizarMatriz(matriz1, ' Matriz 1');
	Escribir "";
	visualizarMatriz(matriz2, ' Matriz 2');
	
		
FinProceso
