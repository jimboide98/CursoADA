with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
procedure Main is
   --  Sumatoria : Integer := 0;
   --  Entrada_Datos : Integer;
   --
begin
   -- calcule la sumatoria de valores hasta que el usuario ingrese 0

   --  Put_Line("Introduzca valores hasta que quiera ( para parar introduzca 0 )");
   --
   --  loop
   --     Get(Entrada_Datos);
   --     exit when (Entrada_Datos=0);
   --
   --     Sumatoria:=Sumatoria+Entrada_Datos;
   --
   --  end loop;
   --
   --  Put_Line("La sumatoria es " & Sumatoria'Image);

   ------------------------------------------------------------------------

   --  Put_Line("Introduzca valores hasta que quiera ( para parar introduzca 0 )");
   --
   --  Get(Entrada_Datos);
   --
   --  while Entrada_Datos /= 0 loop
   --
   --
   --
   --     Sumatoria:=Sumatoria+Entrada_Datos;
   --
   --     Get(Entrada_Datos);
   --
   --  end loop;
   --
   --  Put_Line("La sumatoria es " & Sumatoria'Image);

   -----------------------------------------------

   --  declare
   --     Edad : Integer;
   --
   --  begin
   --     Put_Line("Ingrese su edad");
   --
   --     Get(Edad);
   --
   --     case Edad is
   --
   --        when 0|1|2=> Put_Line("Es un bebe");
   --        when 3..9=> Put_Line("Es un infante");
   --        when 10..18=> Put_Line("Es un joven");
   --        when 19..49=> Put_Line("Es un adulto");
   --        when 50=> Put_Line("Medio siglo");
   --        when others => Put_Line("Mayor de 50");
   --
   --     end case;
   --     end;
   --------------------------------------------------------------
   --  Put_Line("Ingrese su nombre");
   --  declare
   --     Nombre : String := Get_Line;
   --
   --  begin
   --     Put_Line("Hola " & Nombre);
   --     end;
   --
   --  end Main;
   ------------------------------------------------------------

   --  declare
   --
   --     Maximo : Integer:= 0;
   --     ValorNuevo: Integer:=0;
   --
   --  begin
   --     Put_Line("Introduzca valores positivos");
   --
   --
   --     while ValorNuevo /= 0 loop
   --
   --
   --        Get(ValorNuevo);
   --
   --        if ValorNuevo > Maximo then
   --
   --           Maximo := ValorNuevo;
   --
   --           end if;
   --
   --     end loop;
   --
   --     Put_Line("El maximo es"& Maximo'Image);
   --
   --  end;
   --

   ---------------------------------------------------

   --Operador ternario

   --  declare
   --
   --     Edad: Integer;
   --
   --  begin
   --
   --     Get(Edad);
   --
   --     Put_Line(if (Edad>18) then "Es mayor" else "Es menor");
   --  end;

   ----------------------------------------------------------

   --  declare
   --     Entrada : Integer;
   --     Total : Integer := 0;
   --     Pares : Integer := 0;
   --     Impares : Integer := 0;
   --  begin
   --     Put_Line("Ingrese valores. 0 terminar.");
   --
   --     while Entrada /= 0 loop
   --        Get(Entrada);
   --        Total := Total +1;
   --
   --        if(Entrada mod 2 /= 0)
   --        then Impares := Impares +1;
   --        else
   --        Pares := Pares +1;
   --        end if;
   --
   --
   --     end loop;
   --
   --     Put_Line("El total es: " & Total'Image);
   --       Put_Line("El numero de pares es: " & Pares'Image);
   --     Put_Line("El numero de impares es: " & Impares'Image);
   --
   --  end;

   ---------------------------------------------------------------

   declare
      G:Generator;

      Num_Aleatorio: Uniformly_Distributed;

   begin

      Reset(G);

      for I in 1..3 loop

         Num_Aleatorio:=Random(G);

         Put_Line(Num_Aleatorio,0,3,0);
         Put_Line("");

end loop;

      end;



   end Main;
