with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;
package Movil is

   
   type Clase_Movil is tagged private;
   type Ob_Movil is access Clase_Movil;
   
   function To_String(This:Clase_Movil) return String;

   
   
   private
   
    type Clase_Campeon is tagged record
      Posicion_X : Integer := 1;
      Posicion_Y : Integer := 2;
      Velocidad_X : Integer := 3;
      Velocidad_Y : Integer := 3;
   end record;
   

end Movil;
