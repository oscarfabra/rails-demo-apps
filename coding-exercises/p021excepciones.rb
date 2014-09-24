
# Raise lanza una "excepción" para manejar el error

def lanzar_excepcion
	puts 'Estoy antes del raise'
	raise 'Se ha producido un error' # lanza una excepción
	puts 'Estoy despues del raise'
end

lanzar_excepcion


def inverse(x)
	raise ArgumentError, 'El argumento no es numerico'
	unless x.is_a? Numeric
	1.0/x
	end
end

puts inverse(2)
puts inverse('patata') # da un error que es manejado por raise


# Manejando una excepción
# Se pone el método que puede causar el error dentro
# de un bloque begin..end.
# Dentro de este bloque se pueden poner varios
# rescue por cada tipo de error que pueda surgir

def raise_and_rescue
	begin
		puts 'Estoy antes del raise'
		raise 'Un error ha ocurrido'
		puts 'Estoy despues del raise'
	rescue						# Sin parámetros es un tipo StandardError
		puts 'Estoy rescatando del error'
	end
	puts 'Estoy despues del bloque'
end

raise_and_rescue

# Para varios tipos de errores, usar diversos rescue
# Si no concuerda con ninguno, se ejecuta el else

begin
	#
rescue UnTipoDeExcepcion
	#
rescue OtroTipoDeExcepcion
	#
else
	# Otras excepciones
end

# Para saber acerca del tipo de excepcion,
# hay que mapear el objeto Exception a una variable usando rescue

begin
	raise 'Test de excepcion'
rescue Exception => e
	puts e.message
	puts e.backtrace.inspect
end

# Si ademas se necesita que se eecute codigo, se usara
# la instruccion ensure

# Excepciones mas comunes
# RuntimeError -- excepcion por defecto // raise
# NoMethodError -- el objeto no puede manejar el mensaje/metodo que envia // string = 'patata' string.multiplicarse
# NameError -- el interprete encuentra un identificador no identificado // a = variable_sin_definir
# IOError -- lectura de stream cerrado // STDIN.puts("No escribas a STDIN!")
# Errno::error -- errores relacionados con el fichero IO // File.open(-12)
# TypeError -- un metodo recibe un argumento que no puede manejar // a = 3 + "No puedo sumar un string a un numero!"
# ArgumentError -- causado por un numero incorrecto de argumentos // def m(x) end m(1,2,3,4,5)

begin  
  # Abre el fichero y lo lee
  File.open('origen.txt', 'r') do |f1|  
    while line = f1.gets  
      puts line  
    end  
  end  
 
  # Crea un nuevo fichero y escribe en él
  File.open('destino.txt', 'w') do |f2|  
    f2.puts "Creado por Satish"  
  end  
rescue Exception => msg  
  # dispone el mensaje de error 
  puts msg  
end