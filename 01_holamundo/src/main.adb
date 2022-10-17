with ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;

procedure Main is

   --  N : Integer;
   Edad: Integer := 0;
   --  Nombre: String (1..10) ; --Declaro string explicitamente
   Nombre : Unbounded_String;

begin

   --  Ada.Text_IO.Put_Line("Hola mundo ada");
   --  Ada.Text_IO.Put_Line("Bienvenidos a un nuevo lenguaje de programación")

   --  Una vez que agregamos el use no es necesario anteponer el nombre de la lib

   --  Put_Line("Esto es usando use");

   --  Declarar variables

   --  N := 10;

   --  Put_Line(N'Image);
   --  Put(N);
   --  Width y base
   --  Put(N, Width => 3, Base => 2);


   --  Metodo Get

   Put_Line("Introduce una Edad");
   Get(Edad);

   Put_Line("Ingrese su nombre");
   Get_Line(Nombre);

   if Edad<18 then
      Put_Line("Es menor");
   elsif Edad in 18..70 then
      Put_Line("Es mayor");
   else
      Put_Line("Esta jubilado");
   end if;


end Main;
