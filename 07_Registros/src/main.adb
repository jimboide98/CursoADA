with Ada.Strings.Unbounded,Ada.Text_IO;
use Ada.Strings.Unbounded,Ada.Text_IO;
procedure Main is
   type Edad is range 0..150;

   type Persona is record
   Nombre : Unbounded_String;
   Apellidos : Unbounded_String;
   Edad_Persona : Edad;
   end record;

   Una_Persona : Persona;


begin
   Put_Line("Cual es tu nombre?");
   Una_Persona.Nombre:= To_Unbounded_String(Get_Line);

   Put_Line("Cual es tu apellido?");
   Una_Persona.Apellidos:= To_Unbounded_String(Get_Line);

   Put_Line("Cual es tu Edad?");
   Una_Persona.Edad_Persona:= (Integer'Value(Get_Line));

   --  Put_Line("Hola " & To_String(Nombre)
   --           & " " & To_String(Apellidos)
   --           & " de " & Edad_Persona'Image
   --          & " años");

   Put_Line("Hola " & To_String(Una_Persona.Nombre)
            & " " & To_String(Una_Persona.Apellidos)
            & " de " & Una_Persona.Edad_Persona'Image
           & " años");


end Main;
