with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
package Figuras is

   type Clase_Figura is abstract tagged private;
   type Figura is access Clase_Figura'Class; 
   
   --metodo calcular area
   procedure Calcular_Area(This: in Clase_Figura) is abstract;
   
   --circulo
   type Clase_Circulo is new Clase_Figura with private;
   function Create_Circulo(Radio : Float) return Figura; 
   function Get_Radio(This: in Clase_Circulo) return Float;
   overriding procedure Calcular_Area(This: in Clase_Circulo);
  
   --rectangulo
   type Clase_Rectangulo is new Clase_Figura with private;
   function Create_Rectangulo(Base : Float, Altura : Float) return Figura; 
   function Get_Base(This: in Clase_Rectangulo) return Float;
   function Get_Altura(This: in Clase_Rectangulo) return Float;
   overriding procedure Calcular_Area(This: in Clase_Rectangulo); 
   
private
   
   type Clase_Figura is abstract tagged 
      record
        null;
      end record;    

   type Clase_Circulo is new Clase_Figura with 
      record
         Radio : Float;
      end record;
   
   type Clase_Rectangulo is new Clase_Figura with 
      record
         Base : Float;
         Altura: Float;
      end record;
   

end Figuras;
