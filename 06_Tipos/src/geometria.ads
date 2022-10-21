package Geometria is

   type Distancia is new Float;
   type Area is new Float;
   subtype Metros is Distancia;
   
   function "*" (Left,Rigth : in Distancia) return Area ;
      
      
     

end Geometria;
