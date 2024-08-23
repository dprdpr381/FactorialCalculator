program FactorialCalculator;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function CalculateFactorial(Number: Integer): UInt64;
var
  i: Integer;
begin
  Result := 1;
  for i := 2 to Number do
    Result := Result * i;
end;

procedure Main;
var
  Input: string;
  Number: Integer;
  FactorialResult: UInt64;
begin
  try
    Write('vvedite chislo: ');
    Readln(Input);

    // Проверка на число
    if not TryStrToInt(Input, Number) then
      raise Exception.Create('Error: vvedeno ne chislo');

    // Проверка на положительность
    if Number < 0 then
      raise Exception.Create('Error: vvedeno otresatelnoe chislo');

    FactorialResult := CalculateFactorial(Number);

    WriteLn('Factarial chisla ', Number, ' raven:', FactorialResult);
  except
    on E: Exception do
      WriteLn(E.Message);
  end;
end;

begin
  Main;
  Readln;
end.
