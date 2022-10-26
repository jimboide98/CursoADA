with Ada.Text_IO,Ada.Numerics.Float_Random,Ada.Float_Text_IO;
use Ada.Text_IO,Ada.Numerics.Float_Random,Ada.Float_Text_IO;

--  --
--  --  begin
--  --
--  --
--  --  declare
--  --     --type Montos is array (Integer range <>) of Float;
--  --     type Dinero is digits 2;
--  --
--  --     --Empieza en la posicion 1:
--  --     type Montos is array (Positive range <>) of Dinero;     x
--  --     --Empieza en la posicion 0:
--  --     type Array_Natural is array (Natural range <>) of Dinero;
--  --     --Empieza en la posicion Integer'First
--  --     type Array_Integer is array (Integer range <>) of Dinero;
--  --     --Inicializaciones
--  --     --Ventas : Montos(1..5);
--  --     Ventas : Montos := (10.0, 2.3, 6.7);
--  --     Ventas_Natural_Range : Array_Natural := (4.5,3.4);
--  --     Ventas_Integer_Range : Array_Integer := (6.7, 2.3);
--  --  begin
--  --     --  Insert code here.
--  --     --Ventas(0) := 2.3; --Porque da error?
--  --     Put_Line("Primera Posicion (Positive range <>) " & Ventas'First'Image);
--  --     Put_Line("Primera Posicion (Natural range <>) " & Ventas_Natural_Range'First'Image);
--  --     Put_Line("Primera Posicion (Integer range <>) " & Ventas_Integer_Range'First'Image);
--  --     end;
--  --
--  --     end;
--  --
--  --
--
--
--  declare
--
--     --declarar un tipo de arreglo de flotantes (abierto/unconstraind)
--     type Array_Float is array (Positive range <>) of Float;
--     --declarar una funcion que recibe un numero N y me devuelve un arreglo de numeros al azar de N posiciones
--     function Array_Azar (N:Float) return Array_Float is
--        Random: Array_Float;
--        G:Generator;
--        Numero:Float;
--     begin
--
--        for I in Random'Range loop
--           Numero:=Random(G);
--           Random(I):=Numero;
--        end loop;
--        return Random;
--     end Array_Azar;
--
--
--     function Sumatoria_Arreglo(Arreglo_Sum : in Arreglo_Abierto) return Float is
--        Result : Float := 0.0;
--     begin
--        for I in Arreglo_Sum'Range loop
--           Result := Result + Arreglo_Sum(I);
--        end loop;
--        return Result;
--     end;
--
--     --declarar una funcion que recibe un arreglo de este tipo y me devuelve la sumatoria
--     function Sumatoria_Arreglo(Arreglo_Sum : in Arreglo_Abierto) return Float is
--        Result : Float := 0.0;
--     begin
--        for I in Arreglo_Sum'Range loop
--           Result := Result + Arreglo_Sum(I);
--        end loop;
--        return Result;
--     end;
--     --declarar una funcion que recibe un arreglo de este tipo y me devuelve la promedio
--     function Promedio_Arreglo(Arreglo_Prom : in Arreglo_Abierto) return Float is
--        Result : Float := 0.0;
--        Suma : Float;
--     begin
--        Suma := Sumatoria_Arreglo(Arreglo_Prom);
--        Result := (Suma / Float(Arreglo_Prom'Last));
--        return Result;
--     end;
--
--     --uno que mostrar
--
--     procedure Muestra_Array (Array_Azar) is
--  begin
--
--        for I in Array_Azar'Range loop
--           Put_Line(Array_Azar(I)'Image);
--
--  end loop;
--
--  end Muestra_Array;
--
--
--
--
--  --  Numeros : Array_Float := Array_Azar;
--
--
--  begin
--
--
--     Result
--     null;
--  end;


function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float is
   --Result : Array_Float(1..0); --Un array Vacio
   Aux : Array_Float := Arreglo;
   --Copio el arreglo para que tenga la misma longitud
   subtype Tipo_Indice is Integer range Arreglo'Range;
   Indice : Tipo_Indice := Arreglo'First;
begin
   for I in Arreglo'Range loop
      if Arreglo(I)>Valor then
         Aux(Indice) := Arreglo(I);
      end if;         end loop;
   declare
      Result : Array_Float(Arreglo'First..Indice-1); --Me puede quedar vacio
   begin
      Result := Arreglo(Arreglo'First..Indice-1);--Slice
      return Result;
   end;
end Mayores;
