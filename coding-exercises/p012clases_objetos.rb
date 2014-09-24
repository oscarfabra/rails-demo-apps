
class Perro
	
	def initialize(raza, nombre)
		@raza = raza
		@nombre = nombre
	end
	
	def ladrar
		puts 'Guau! Guau!'
	end
	
	def saludar
		puts "Soy un perro de la raza #{@raza} y mi nombre es #{@nombre}"
	end
end

d = Perro.new('Labrador','Benzy')
puts d.methods.sort
puts "La id del objeto es #{d.object_id}."

if d.respond_to?("correr")
	d.correr
else
	puts "Lo siento, el objeto no entiende el mensaje 'correr'"
end

d.ladrar
d.saludar

d1 = d
d1.saludar

puts d.class.to_s

puts (d.instance_of? Perro)

# Constructores literales: siempre estamos creando un objeto
# String ' o "
# Símbolo :
# Array []
# Hash {}
# Rango .. o ...
# Expresiones regulares /

# Colector de basura

d = nil # Apunta a una dirección sin nada

d1.saludar

d.saludar


# Métodos de clase: enviar mensajes a la clase en vez de una instancia

