// "Cargar" dos vectores cada uno con 5 datos enteros y determinar si los datos
// almacenados en ambos vectores son exactamente los mismos tanto en contenido como en posición.

Funcion fillVector(vec, dim)
	Definir i Como Entero;
	Para i <- 0 Hasta (dim - 1) Con Paso 1 Hacer
		Leer vec[i];
	FinPara
FinFuncion

Funcion displayVector(vec, dim, label)
	Definir i Como Entero;
	
	Escribir label, ": [" Sin Saltar;
	
	Para i <- 0 Hasta (dim - 1) Con Paso 1 Hacer
		Si i <> (dim - 1)
			Escribir vec[i], ", " Sin Saltar;
		SiNo
			Escribir vec[i] Sin Saltar;
		FinSi
	FinPara
	
	Escribir "]";
FinFuncion

Proceso are_vectors_equal
	Definir vec1, vec2, i Como Entero;
	Definir areEqual Como Logico;
	Dimension vec1[5], vec2[5];
	
	Limpiar Pantalla;
	Escribir "";
	// Fill vectors using function
	Escribir "Digite los 5 números del primer vector";
	fillVector(vec1, 5);
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Digite los 5 números del segundo vector";
	fillVector(vec2, 5);
	
	Limpiar Pantalla;
	
	Escribir "";
	Escribir "Los vectores ingresados son:";
	Escribir "";
	
	displayVector(vec1, 5, "Vector 1");
	displayVector(vec2, 5, "Vector 2");
	
	areEqual <- Verdadero;
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Si areEqual Y vec1[i] <> vec2[i] Entonces
			areEqual <- Falso;
		FinSi
	FinPara
	
	Escribir "";
	Si areEqual Entonces
		Escribir "Los vectores son iguales.";
	SiNo
		Escribir "Los vectores no son iguales.";
	FinSi
	Escribir "";
FinProceso
