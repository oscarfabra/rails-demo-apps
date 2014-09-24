
# En cada instante de la ejecución del programa,
# hay uno y sólo un self: el objeto que se está usando
# en ese instante


puts self

class S  
  puts 'Comenzo la clase S'  
  puts self  
  module M  
    puts 'Modulo anidado S::M'  
    puts self  
  end  
  puts 'De regreso en el nivel mas superficial de S'  
  puts self  
end


# self dentro de los métodos

class S  
  def m  
    puts 'Clase S, metodo m:' 
    puts self
  end  
end  


s = S.new  
s.m