with Ada.Text_IO,IO,Selva,Ada.Numerics.Float_Random;
use Ada.Text_IO,IO,Selva,Ada.Numerics.Float_Random;

procedure Main is
   --Leon : Animal;
   --Un_Animal : Animal;

    type Array_Animales is array (Positive range <>) of Animal;
begin
   --Leon := Create("Mufasa");

   --Elijo uno u otro
   --Un_Animal := new Clase_Leon;
   --Un_Animal := new Clase_Jirafa;

   --Ahora uso los constructores
   --Un_Animal := Create_Leon("Alex");
   --Un_Animal := Create_Jirafa("Mellman");

   --Put_Line("Hola soy " & Un_Animal.Get_Nombre);
   --Un_Animal.Hablar;



   declare
      Animales : Array_Animales(1..Num_Animales) := (others=>null);

      G : Generator;
      Azar : Uniformly_Distributed;
      Un_Animal : Animal;
   begin

      Initializate(G);

      for I in Animales'Range loop

         Azar := Random(G);

         if Azar< 0.3 then
            Animales(index):=Create_Leon("Mufacha");
         elsif Azar> 0.7 then
            Animales(index):=Create_Jirafa("Melman");
         else
            Animales(index):=Create_Puma("Pumita");
         end if;

      end loop;


      Put_Line("Los ruidos de la selva...");


      for Criatura of Array_Animales loop

         Criatura.Hablar;

         end loop;

   end;


end Main;
