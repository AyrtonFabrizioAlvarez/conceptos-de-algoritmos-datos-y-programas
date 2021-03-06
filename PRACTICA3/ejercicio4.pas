{Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se lee:
marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
información se ingresa ordenada por marca. Se pide calcular e informar:
a. El precio promedio por marca.
b. Marca y modelo del auto más caro}

program ejercicio5;
type
	autos = record
		marca:string;
		modelo:integer;
		precio:real;
	end;
	
procedure leerAuto (auto:autos);
begin
	writeln('Ingrese la marca del auto');
	readln(auto.marca);
	writeln('Ingrese el modelo del auto');
	readln(auto.modelo);
	writeln('Ingrese el precio del auto');
	readln(auto.precio);
end;

procedure actualizarMax(auto:autos ; var max:real ; var maxModelo:integer ; maxMarca:string);
begin
	if (auto.precio > max) then begin
		maxMarca:= auto.marca;
		maxModelo:= auto.modelo;
		max:= auto.precio
	end
end;


var
	auto:autos;
	maxMarca, marcaActual:string;
	maxModelo, cantAutosPorMarca:integer;
	max, precioPromedio, precioTotal:real;

BEGIN
	max:=0;
	maxModelo:=0;
	maxMarca:=' ';
	precioPromedio:=0;
	precioTotal:=0;
	cantAutosPorMarca:=0;
	leerAuto(auto);
	while (auto.marca <> 'ZZZ') do begin
		marcaActual:= auto.marca;
		while (marcaActual = auto.marca) do begin
			precioTotal:= precioTotal + auto.precio;
			cantAutosPorMarca:= cantAutosPorMarca + 1;
			actualizarMax(auto, max, maxModelo, maxMarca);
		leerAuto(auto);
		end;
		precioPromedio:= precioTotal / cantAutosPorMarca;
		writeln('El precio promedio en la marca ', marcaActual, ' es de ', precioPromedio);
	end;
	writeln('');
	
	
END.

