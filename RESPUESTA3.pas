//EJERCICIO 3


function InvertirPalabra(palabra: string): string;
var
  i: Integer;
  invertida: string;
begin
  invertida := '';
  for i := length(palabra) downto 1 do
    invertida := invertida + palabra[i];
  InvertirPalabra := invertida;
end;

function InvertirSegundaPalabraEnCadena(cad: string): string;
var
  i, palabraIndex, inicio, fin: Integer;
  palabra, resultado: string;
begin
  palabraIndex := 0;
  inicio := 0;
  fin := 0;
  resultado := '';
  i := 1;

  while i <= length(cad) do
  begin
    if (cad[i] = ' ') or (i = length(cad)) then
    begin
      if i = length(cad) then
        fin := i
      else
        fin := i - 1;

      Inc(palabraIndex);

      if palabraIndex = 2 then
        palabra := InvertirPalabra(Copy(cad, inicio, fin - inicio + 1))
      else
        palabra := Copy(cad, inicio, fin - inicio + 1);

      if resultado = '' then
        resultado := palabra
      else
        resultado := resultado + ' ' + palabra;

      inicio := i + 1;
    end;
    Inc(i);
  end;

  Result := resultado;
end;

//LLAMADA
Edit3.Text := InvertirSegundaPalabraEnCadena(cad);
