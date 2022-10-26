with Ada.Text_IO,Ada.Strings.Unbounded;
use Ada.Text_IO,Ada.Strings.Unbounded;

procedure Main is
type Persona is record
         Nombre : Unbounded_String;
         Apellido : Unbounded_String;
         Edad : Integer range 1..100;
      end record;

   Persona1 : Persona := (To_Unbounded_String("Jaime"),To_Unbounded_String("Calurano"),22);
   --Persona1 : Persona := (Nombre => "Jaime", Apellido => "Calurano", Edad => 22);

   type Muchas_Personas is array (Positive range <>) of Persona;

   Rango_Personas : Integer;

begin

   Put_Line("Cuantas personas quieres?");
   Get_Line(Rango_Personas);

   for I in Rango_Personas loop
   --Nombre
      Put_Line("Nombre de la Persona");
      Persona.Nombre:=(To_Unbounded_String(Get_Line));
   --Apellido
      Put_Line("Apellido de la Persona");
      Persona.Nombre:=(To_Unbounded_String(Get_Line));
   --Edad
      Put_Line("Edad de la Persona");
      Persona.Edad:=(Get_Line);


end loop;






   null;
end Main;
