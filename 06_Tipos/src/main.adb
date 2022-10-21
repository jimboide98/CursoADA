with Ada.Text_IO, ada.Integer_Text_IO,Ada.Float_Text_IO;
use Ada.Text_IO, ada.Integer_Text_IO,Ada.Float_Text_IO;
procedure Main is
  --  --type Cantidad is range 0..Integer'Last;
  --  --type Cantidad is range 0..300;
  --  --type Cantidad is new Integer;
  --  --type Cantidad_Peras is new Integer;
  --  --type Cantidad_Manzanas is new Integer;
  --  type Cantidad is range 0..2**63-1;
  --
  --   subtype Cantidad_Manzanas is Cantidad;
  --   subtype Cantidad_Peras is Cantidad;
  --
  --
  --   Peras : Cantidad_Peras;
  --   Manzanas : Cantidad_Manzanas;
  --   Frutas : Cantidad;
  --   --Total : Integer;
begin

   --  Peras := 2;
   --  Manzanas := 4;
   --
   --  --Peras := Manzanas; -- Seria valido excepto en ada
   --
   --  Frutas := Peras + Manzanas; --Valido
   --  --Total := Peras + Manzanas; -- No valido
   --
   --
   --  Frutas:=300;
   --  Frutas:= Frutas+50;
   --  Frutas := 3**3;
   --
   --  Put_Line("Ahora hay " & Frutas'Image & " Frutas");
   --
   --  declare
   --     type Mi_tipo is new Integer;
   --     Variable: Mi_tipo;
   --
   --  begin
   --     Variable :=3;
   --     end;
   --




   --  declare
   --
   --     type  Distancia is new Float;
   --     type Area is new Float;
   --     Base : Distancia;
   --     Altura: Distancia;
   --     Superficie: Area;
   --  begin
   --     Base:= 10.0;
   --     Altura:= 30.0;
   --     --Superficie:=Base*Altura; --no valido
   --
   --     Superficie:= Area (Base * Altura);
   --
   --     procedure Procedure_En_Declare
   --
   --       begin
   --
   --       end;
   --
   --     end;



   declare
      type Dias is (Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo);

      Primer_Dia_Semana := Dias;
   begin

      Primer_Dia_Semana := Lunes;

      for Dia in Dias loop
         Put_Line("Hoy es " & Dia'Image);
      end loop;

end;


end Main;
