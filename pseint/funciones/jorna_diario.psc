Funcion clearScreen
	Limpiar Pantalla;
	Escribir '';
	Escribir '|---------------------------------|';
	Escribir '|          Jornal diario          |';
	Escribir '|---------------------------------|';
	Escribir '';
FinFuncion

Funcion type <- getTypeOfDay(dayIndex)
	Definir type Como Caracter;
	
	Si dayIndex == 6 o dayIndex == 7 Entonces
		type <- 'Festivo';
	SiNo
		type <- 'Laborable';
	FinSi
FinFuncion

Funcion journal <- calcJournal(hours, turn, typeOfDay)
	Definir DAY_SHIFT_FEE, NIGHT_SHIFT_FEE Como Real;
	Definir journal, result Como Real;
	
	DAY_SHIFT_FEE = 10;
	NIGHT_SHIFT_FEE = 13.5;
	result <- 0;
	
	Si turn == 'Diurno' Entonces
		result = hours * DAY_SHIFT_FEE;
	SiNo
		result = hours * NIGHT_SHIFT_FEE;
	FinSi
	
	Si typeOfDay = 'Festivo' Entonces
		Si turn == 'Diurno' Entonces
			result <- result * 1.1;
		SiNo
			result <- result * 1.15;
		FinSi
	FinSi
	
	journal <- trunc(redon(result * 100))/100;
FinFuncion

Proceso jorna_diario
	Definir name, days, typeOfDay, turns Como Caracter;
	Definir day, turn, hours Como Entero;
	Definir journal Como Real;
	Dimension days[7];
	Dimension turns[2];
	
	days[1] <- 'Lunes';
	days[2] <- 'Martes';
	days[3] <- 'Miércoles';
	days[4] <- 'Jueves';
	days[5] <- 'Viernes';
	days[6] <- 'Sábado';
	days[7] <- 'Domingo';
	
	turns[1] <- 'Diurno';
	turns[2] <- 'Nocturno';
	
	clearScreen();

	Escribir 'Nombre del empleado: ';
	Leer name;
	
	clearScreen();
	Escribir 'Empleado: ', name;
	Escribir '';
	
	Escribir 'Digite el número correspondiente al día de la semana:';
	Escribir '1. Lunes';
	Escribir '2. Martes';
	Escribir '3. Miércoles';
	Escribir '4. Jueves';
	Escribir '5. Viernes';
	Escribir '6. Sábado';
	Escribir '7. Domingo';
	
	Leer day;
	typeOfDay = getTypeOfDay(day);
	
	clearScreen();
	Escribir 'Empleado: ', name;
	Escribir 'Día: ', days[day], ' (', typeOfDay, ')';
	Escribir '';
	
	Escribir 'Digite el número correspondiente al turno:';
	Escribir '1. Diurno';
	Escribir '2. Nocturno';
	Leer turn;
	
	clearScreen();
	Escribir 'Empleado: ', name;
	Escribir 'Día: ', days[day], ' (', typeOfDay, ')';
	Escribir 'Turno: ', turns[turn];
	Escribir '';
	
	Escribir 'Digite el número de horas trabajadas:';
	leer hours;
	
	journal <- calcJournal(hours, turns[turn], typeOfDay);
	
	clearScreen();
	Escribir 'Empleado: ', name;
	Escribir 'Día: ', days[day], ' (', typeOfDay, ')';
	Escribir 'Turno: ', turns[turn];
	Escribir 'Horas trabajadas: ', hours;
	Escribir '';
	Escribir 'El jornal del trabajador es: $', journal;
FinProceso
