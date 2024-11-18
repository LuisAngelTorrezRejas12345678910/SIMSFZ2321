//--------------------------------------------------
//EJERCICIO 1
function SumaProductos(n: Integer): real;
var
  i: Integer;
  resultado, termino1, termino2: real;
begin
  resultado := 0.0;
  termino1 := 1.0;

  for i := 1 to n do
  begin

    termino2 := termino1 + 2.0;

    resultado := resultado + (termino1 * termino2);

    termino1 := termino2;
  end;

  SumaProductos := resultado;
end;

function CalcularFactorial(n: Integer): Integer;
var
  resultado, i: Integer;
begin
  resultado := 1;

  for i := 2 to n do
  begin
    resultado := resultado * i;
  end;

  Result := resultado;
end;

function SumaProductos2(n: Integer): real;
var
  suma, x, d, t, sum: real;
  serie, a: Integer;
begin
  c := 0;
  serie := 3;
  x := 0;
  a := 1;
  sum := 0;
  while n > c do
  begin

    x := a * serie;
    d := CalcularFactorial(a);
    t := x / d;
    serie := serie + 2;
    sum := sum + t;
    c := c + 1;
    a := a + 2;

  end;

  Result := sum;
end;

//LLAMADA
 Edit3.Text := floattoStr(SumaProductos2(n));









 ////////////////////////////
unit Unit2;
interface
uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
Vcl.Graphics,
 Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls;
type
 TForm2 = class(TForm)
 MainMenu1: TMainMenu;
 Button1: TButton;
 Edit1: TEdit;
 Edit2: TEdit;
 Edit3: TEdit;
 BitBtn1: TBitBtn;
 EJ1: TMenuItem;
 EXAMEN1: TMenuItem;
 procedure Button1Click(Sender: TObject);
 procedure EXAMEN1Click(Sender: TObject);
 private
 { Private declarations }
 public
 { Public declarations }
 end;
var
 Form2: TForm2;
n,c:integer;
implementation
{$R *.dfm}
procedure TForm2.Button1Click(Sender: TObject);
begin
n:=StrToInt(Edit1.Text);
ShowMessage('NUMERO REGISTRADO');
end;
function SumaProductos(n: Integer): real;
var
 i: Integer;
 resultado, termino1, termino2: real;
begin
 resultado := 0.0;
termino1 := 1.0;
 for i := 1 to n do
 begin
 termino2 := termino1 + 2.0;
 resultado := resultado + (termino1 * termino2);
 termino1 := termino2;
 end;
 SumaProductos := resultado;
end;
function CalcularFactorial(n: Integer): Integer;
var
 resultado, i: Integer;
begin
 resultado := 1;
 for i := 2 to n do
 begin
 resultado := resultado * i;
 end;
 Result := resultado;
end;
function SumaProductos2(n: Integer): real;
var
 suma, x, d, t, sum: real;
 serie, a: Integer;
begin
 c := 0;
 serie := 3;
 x := 0;
 a := 1;
 sum := 0;
 while n > c do
 begin
 x := a * serie;
 d := CalcularFactorial(a);
 t := x / d;
 serie := serie + 2;
 sum := sum + t;
 c := c + 1;
 a := a + 2;
 end;
 Result := suma
end;
procedure TForm2.EXAMEN1Click(Sender: TObject);
begin
Edit3.Text := floattoStr(SumaProductos2(n));
end;
end.

