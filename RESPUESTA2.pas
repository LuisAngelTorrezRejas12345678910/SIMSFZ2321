
//EJERCICIO 2
function InsertarDigitoEnPosicion(n: Integer; pos: Integer;
  digito: Integer): Integer;
var
  numStr, parte1, parte2: string;
  resultado: Integer;
begin

  numStr := IntToStr(n);

  parte1 := Copy(numStr, 1, pos);
  parte2 := Copy(numStr, pos + 1, Length(numStr) - pos);

  numStr := parte1 + IntToStr(digito) + parte2;

  resultado := StrToInt(numStr);

  InsertarDigitoEnPosicion := resultado;
end;

//LLAMADA

  Edit3.Text := IntToStr(InsertarDigitoEnPosicion(n, StrToInt(Edit2.Text),
    StrToInt(Edit3.Text)));