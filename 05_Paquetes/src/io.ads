package IO is

   function Get_Not_Empty_Line
     (ErrorMessage : String:="Entrada vacia. Vuelva a ingresar")return String;

   function Try_Get_Integer 
     (Value: out Integer) return Boolean;
   
   function Get_Integer
     (ErrorMessage: String := "No ingreso un numero. Vuelva a intentar")return Integer; 
end IO;
