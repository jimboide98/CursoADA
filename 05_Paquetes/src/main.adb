with Constantes, Ada.Text_IO, IO,Ada.Integer_Text_IO;
use Ada.Text_IO, IO,Ada.Integer_Text_IO;

procedure Main is

begin

   Put_Line(Constantes.Titulo);
   Put_Line("Version" & Constantes.Version'Image);
   New_Line(2);
   Put_Line("Ingrese su nombre");

   declare

      Nombre : String := Get_Not_Empty_Line;

   begin
      Put_Line("Hola " & Nombre);

   end;

   Put_Line("Ingrese su edad");

   declare
   Edad:Integer;
   begin
      --  if (Try_Get_Integer(Edad)) then
      --     Put_Line("Edad " & Edad'Image);
      --
      --  else
      --     Put_Line("No ingresaste un numero");
      --
      --     Put_Line("Edad "& Edad'Image);
      --
      --  end if;

      Edad:= Get_Integer;

      Put_Line("No ingresaste un numero");
end;



end Main;
