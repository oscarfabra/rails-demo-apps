# Modulos: actúan como librería, definiendo métodos cuyos
# nombres no interfieran con otros definidos en otros sitios

require 'C:/ruby193/programas/trig.rb'
require 'C:/ruby193/programas/moral.rb'

Trig.sin(Trig::PI/4)
Moral.sin(Moral::MUY_MAL)

# Segundo: permiten aumentar las funcionalidades de las clases
# Si una clase usa un módulo, los métodos de este módulo
# estarán disponibles en los objetos que procedan de esta clase

module D
	def initialize(nombre)
		@nombre = nombre
	end
	def to_s
		@nombre
	end
end

module Debug
	include D
	
	def quien_soy?
		"#{self.class.name} (\##{self.object_id}): #{self.to_s}"
	end
end

class Gramola
	
	include Debug # No se necesita poner entre comillas pq toma el nombre como una constante

end

class OchoPistas
	include Debug
end

gr = Gramola.new("West End Blues")
op = OchoPistas.new("Real Pillow")
puts gr.quien_soy?
puts op.quien_soy?
