Funcion result <- area_circle(radius)
	Definir result Como Real;
	result <- trunc(redon(pi * 100 * radius ^ 2))/100;
FinFuncion

Proceso area_circulo
	Definir radius, area Como Real;
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|    Calcular área del círculo    |';
	Escribir '|---------------------------------|';
	Escribir '|         Digita el radio         |';
	Escribir '|---------------------------------|';
	Escribir '';
	
	Leer radius;
	
	area <- area_circle(radius);
	
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|    Calcular área del círculo    |';
	Escribir '|---------------------------------|';
	Escribir '|            radio: ', radius,'u', '            |';
	Escribir '|---------------------------------|';
	Escribir '';
	Escribir 'Area: ', area, 'u^2';
	Escribir '';
FinProceso
