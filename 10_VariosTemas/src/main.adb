with Ada.Text_IO,Ada.Strings.Unbounded;
use Ada.Text_IO,Ada.Strings.Unbounded;
procedure Main is

begin

   --declare
      --  --Array_Vacio:Array_Numeros (2..1);
      --  type Nota is range 0..10 with Default_Value => 7;
      --  type Array_Numeros is array(Positive range <>) of Integer with Default_Component_Value => 10;
      --  type Muchos_Numeros : Array_Numeros (1..15) :=  (1=>2, 2|3|4=>7, 5=><>, others => 5);
      --  Pedacito : Array_Numeros := Muchos_Numeros(1..4); --slice
      --  Muchos_Mas_Numeros: Array_Numeros := Muchos_Numeros & Pedacito;
      --
      --
      --  Muchos_Numeros: Array_Numeros(1..15);
      --  Mi_Nota:Nota;
--begin
      --
      --  for I in Muchos_Mas_Numeros'Range loop
      --     Put_Line(Muchos_Mas_Numeros(I)'Image);
      --  end loop;
      --  Put_Line(Muchos_Mas_Numeros'Image);
      --end;


   --declare

      --type Componente_Adn is (A,G,C,T);

      --  Componente : Componente_Adn := A;
      --
      --  Componente_Adn_As_String : array (Componente_Adn) of Unbounded_String
      --    := (To_Unbounded_String("Adenina")
      --            To_Unbounded_String("Guanina")
      --            To_Unbounded_String("Citoscina")
      --            To_Unbounded_String("Timna"));
--
--        function To_String (Enum:Componente_Adn) return String is
--        begin
--           return
--             (Case Enum is
--                 when A=> "Adeina",
--                 when G=> "Adeina",
--                 when C=> "Adeina",
--                 when T=> "Adeina");
--
--        end To_String;
--
--        Componente : Componente_Adn := A;
--
--  begin
--     Put_Line(To_String(Componente));
--  end;
--


   declare

      --  type Dia is range 1..31;
      --  type Mes is range 1..12;

      type fecha is record
         Dia : Integer range 1..31;
         Mes : Integer range 1..12;
         Año : Integer range 1900..3000;
      end record;

      Nacimiento : Fecha := (20,9,1980);
      Nacimiento : Fecha := (Dia => 20, Mes => 9, Año => 1980);

   begin
      Nacimiento.Dia:= 20;

      end;

end Main;
