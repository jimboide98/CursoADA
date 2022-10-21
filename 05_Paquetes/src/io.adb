with Ada.Text_IO;use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed;use Ada.Strings.Fixed;
with Ada.Integer_Text_IO;use Ada.Integer_Text_IO;

package body IO is   
   
   function Get_Not_Empty_Line
     (ErrorMessage : String:="Entrada vacia. Vuelva a ingresar")return String is

      use Ada.Text_IO;   
   begin      
      loop         
         declare            
            
            Entrada:String := Get_Line;         
         begin    
            declare
                Entrada_Sin_Espacios : String := Trim(Entrada, Both);           
            begin 
               
           
               if (Entrada_Sin_Espacios'Length > 0) then
                  
                  return Entrada_Sin_Espacios;
               
               end if; 
               
               
               end;
         end;         
         Put_Line(ErrorMessage);     
      end loop;  
   end Get_Not_Empty_Line;  
   
   function Try_Get_Integer
     
     (Value: out Integer) return Boolean is
      
   begin
      
      Value := Integer'Value(Get_Line);
      return True;

   exception
         
      when others => return False;
      
   end Try_Get_Integer;
   
   
   
    function Get_Integer
     (ErrorMessage: String := "No ingreso un numero. Vuelva a intentar")return Integer is
      
   begin      
      loop        
         declare          
            Edad : Integer;        
         begin                       
            if (Try_Get_Integer(Edad)) then      
               Put_Line("Edad " & Edad'Image);            
               return Edad;           
            else              
               Put_Line("No ingresaste un numero");          
            end if;                    
         end;         
    
      end loop;       
      
      end Get_Integer;
   
end IO;
