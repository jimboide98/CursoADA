with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
procedure Main is

begin

   declare
      G: Generator;
      Numero_Al_Azar : Integer;
      Entrada : Integer;
      Victoria : Boolean := false;
      Oportunidad_Actual: Integer :=0;
      Max_Oportunidades: constant Integer := 5;

   begin

      Reset(G);
      Put_Line("Juego de adivinar el número");
      Numero_Al_Azar:= Integer(( Random (G) * 99.0) + 1.0);
      loop

         Put_Line("Adivina el número secreto");
         Get(Entrada);

         if (Entrada>Numero_Al_Azar) then

            Put_Line("El número ingresado es mayor");

         elsif (Entrada<Numero_Al_Azar) then

            Put_Line("El número ingresado es menor");

         else

            Victoria := true;

         end if;

         Oportunidad_Actual:= Oportunidad_Actual + 1;

         exit when (Oportunidad_Actual > Oportunidad_Actual) or (Victoria);
         end loop;

      Put_Line(if Victoria then "Ganaste" else "Perdiste");

   end;




end Main;
