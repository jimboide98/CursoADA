package body Figuras is

   --GETTERS
   
   function Get_Radio(This: in Clase_Circulo) return Float is
   begin
      return Float(This.Radio);
   end;
   
   function Get_Base(This: in Clase_Rectangulo) return Float is
   begin
      return Float(This.Base);
   end;
   
   function Get_Altura(This: in Clase_Rectangulo) return Float is
   begin
      return Float(This.Altura);
   end;
   
   
   
    function Create_Circulo(Radio : Float) return Figura is
     Result : Figura := new Clase_Circulo;
    begin
      Result.Radio := Float(Radio);
      return Result;
   end Create_Circulo;
   
   function Create_Rectangulo(Base : Float, Altura : Float) return Figura is
     Result : Figura := new Clase_Rectangulo;
    begin
      Result.Base := Float(Radio);
      return Result;
   end Create_Circulo;
   
   procedure Calcular_Area(This: in Clase_Figura) is
   begin
      
   end Calcular_Area;
   
   
   
   
   

end Figuras;
