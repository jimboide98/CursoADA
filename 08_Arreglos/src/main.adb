with Ada.Text_IO,Ada.Numerics.Float_Random,Ada.Strings.Unbounded;
use Ada.Text_IO,Ada.Numerics.Float_Random,Ada.Strings.Unbounded;
procedure Main is
   --  type Indice_Diez_Numeros is range 1..10;
   --  type Arreglo_Diez_Numeros is array (Indice_Diez_Numeros) of Integer;
   --
   --  Diez_Numeros : Arreglo_Diez_Numeros;
   --  G:Generator;


begin

   --Diez_Numeros :=(1,2,3,4,5,6,7,8,9,10);

   --Cargo el arreglo de 10 numero
   --  for I In Indice_Diez_Numeros loop
   --     Diez_Numeros (I) := Integer(Random(G) * Float(Integer'Last));
   --  end loop;
   --
   --  for I in Arreglo_Diez_Numeros'First..Arreglo_Diez_Numeros'Last loop
   --     Put_Line(Diez_Numeros(I)'Image);
   --  end loop;


   --  declare
   --     function "+" (Value: in String) return Unbounded_String renames To_Unbounded_String;
   --
   --     type Dia is (Lunes,Martes,Miercoles,Jueves,Viernes,Sabado,Domingo);
   --     --  Dia_En_Ingles : array (Dia) of  Unbounded_String := (To_Unbounded_String("Monday"),
   --     --                                                       To_Unbounded_String("Tuesday"),
   --     --                                                       To_Unbounded_String("Wednesday"),
   --     --                                                       To_Unbounded_String("Thursday"),
   --     --                                                       To_Unbounded_String("Friday"),
   --     --                                                       To_Unbounded_String("Saturday"),
   --     --                                                       To_Unbounded_String("Sudney"));
   --     Dia_En_Ingles : array (Dia) of  Unbounded_String := (+("Monday"),
   --                                                          +("Tuesday"),
   --                                                          +("Wednesday"),
   --                                                          +("Thursday"),
   --                                                          +("Friday"),
   --                                                          +("Saturday"),
   --                                                          +("Sudney"));
   --
   --      --  Un_Dia : Dia;
   --
   --  begin
   --     --  Un_Dia := Miercoles;
   --     --  Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --     for Un_Dia in Dia_En_Ingles'Range loop
   --
   --        Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --
   --     end loop;
   --
   --  end;

   ----------------------


   --  declare
   --     --DEcalrar un tipo para un arreglo de 5 numeros
   --     --declarar  una funcion que devuelve el aarray anterior cargado con num aleatorios
   --     type Indice_Cinco_Numeros is range 1.. 5;
   --     type Array_Cinco_Numeros is array (Indice_Cinco_Numeros) of Natural ;
   --
   --
   --     function Array_Cinco_Numeros_Al_Azar return Array_Cinco_Numeros is
   --        G:Generator;
   --        Result : Array_Cinco_Numeros;
   --     begin
   --        for index in Indice_Cinco_Numeros loop
   --           Result(index) := Natural (Random(G) * Float(Natural'Last));
   --        end loop;
   --
   --        return Result;
   --
   --     end;
   --
   --     Cinco_Al_Azar:Array_Cinco_Numeros_Al_Azar:=Array_Cinco_Numeros_Al_Azar;
   --
   --
   --
   --
   --  begin
   --
   --     for index in Cinco_Al_Azar'Range loop
   --        Put_Line(Cinco_Numeros(index)'image);
   --     end loop;
   --  end;
   --


   --  declare
   --
   --     --  type Indice_Cinco_Numeros is range (1.. 5) of Positive;
   --     --  type Indice_Siete_Numeros is range (1.. 7) of Positive;
   --     --  type Indice_Diez_Numeros is range (1.. 10) of Positive;
   --
   --     --Lo remplazamos por:
   --
   --     type Rango_Maximo is range 1..50; -- Para establecer el maximo
   --
   --     type  Array_Numeros is array (Integer range <>) of Positive;
   --
   --     Diez_Numeros : Array_Numeros(1..10);
   --
   --  begin
   --     --  Diez_Numeros :=(1,2,3,4,5,6,7,8,9,10);
   --
   --     Diez_Numeros:= (1=>1, 5=>5, 7=>7, others=>100); -- <> cualquier cosa
   --
   --     Put_Line("El array tiene " & Diez_Numeros'Length'Image & " elementos");
   --
   --     for index in Diez_Numeros'Range loop
   --
   --       Put_Line(Diez_Numeros(index)'Image);
   --
   --     end loop;
   --
   --  end;


  declare
      --declarar un tipo que sea un arreglo de numeros
      type Array_Numeros is array (Integer range <>) of Integer;

      --declarar una funcion que reciba el arreglo y devuelva el max

      function Devuelve_Mayor_Arreglo (Array_N : Array_Numeros) return Integer is

         Maximo : Integer := 0;
      begin
         for I in Array_N'Range loop
            if Array_N(I) > Maximo  then
               Maximo:= Array_N(I);
            end if;
         end loop;
         return Maximo;
      end Devuelve_Mayor_Arreglo;

      Longitud_Ingresada : Integer;

   begin

      Put_Line("¿Cuantos elementos desea ingresar?");

      Longitud_Ingresada := integer'Value(Get_Line);


      declare
         Numeros : Array_Numeros(1..Longitud_Ingresada);
      begin
         for I in Numeros'Range loop
            Put_Line("Ingrese el numero " & I'Image);
            Numeros (I) := Integer'Value(Get_Line);

         end loop;

         Put_Line("El maximo es " & Devuelve_Mayor_Arreglo(Numeros)'Image);

      end;
end;


end Main;
