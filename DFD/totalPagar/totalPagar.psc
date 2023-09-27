Proceso totalPagarDescuento
	Definir valorCompra Como Entero;
	Definir totalPagar Como Entero;
	
	Escribir 'Ingrese el valor de su compra';
	Leer valorCompra;
	
	Si valorCompra > 100000 Entonces
		totalPagar <- valorCompra * 1.2;
	SiNo
		totalPagar <- valorCompra;
	FinSi
	
	Escribir 'Su total a pagar es de $', totalPagar;
FinProceso
