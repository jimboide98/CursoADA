package body Movil is

      function To_String(This:Clase_Campeon) return String is
   begin
      return "Movil " 
        
        & "(Posicion_X :" & This.Posicion_X'Image & ","
        & "Posicion_Y :" & This.Posicion_Y'Image & ","
        & "Velocidad_X :" & This.Velocidad_X'Image & ","
        & "Velocidad_Y :" & This.Velocidad_Y'Image & ")";
   end;

end Movil;
