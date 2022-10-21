with Ada.Text_IO; use Ada.Text_IO;

procedure Main is

   --  function Sumar (N1 : Integer; N2 : Integer) return Integer is
   --  begin
   --     return N1+N2;
   --  end;
   ------------------------------------------------------------------------------
   --  function Exponente (Base : Integer; Exp : Integer := 2) return Float is
   --     Resultado : Float;
   --  begin
   --
   --     if(Exp=0) then return 1.0; end if;
   --        if(Exp=1) then return Float(Base);
   --           end if;
   --
   --     Resultado := Float(Base);
   --     for I in 2..Exp loop
   --        Resultado := Resultado * Float(Base);
   --
   --     end loop;
   --
   --     if (Exp<0) then
   --        return 1.0 / Resultado;
   --
   --     end if;
   --
   --     return Resultado;
   --
   --  end;
   --

   --  Primer_Valor : Integer;
   --  Segunfo_Valor : Integer;
   --  Resultado : Integer;





begin

   --  Primer_Valor := 6;
   --  Segunfo_Valor :=6;
   --
   --  Resultado := Sumar (Primer_Valor, Segunfo_Valor);
   --
   --  Put_Line("El resultado de sumar " & Primer_Valor'Image & " y " & Segunfo_Valor'Image & " es " & Resultado'Image);

   procedure Show_Float(Value:Float) (Value:Float) is

      use Ada.Float_Text_IO;
begin

   end Show_Float);

      declare
      --  Res : Float;



      procedure Mayor_Menor (Num1:Integer;Num2:Integer;May: out Integer;Men: out Integer) is

      begin

         Mayor := (if (Num1>Num2) then Num1 else Num2);
         Menor := (if (Num1<Num2) then Num1 else Num2);


      end Mayor_Menor;


begin

         --  Res:= Exponente(2);
         --  Put(Res, Exp=>0);
         --  Res:=Exponente(2,3);
         --  Put(Res, Exp=>0);
         --
end;




end Main;
