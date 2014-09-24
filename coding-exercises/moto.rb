

class Moto
	def initialize(marca, color)
		
		@marca = marca
		@color = color
	end
	
	def arrancar
		if (@motor_encendido)
			puts 'Motor encendido'
		else
			@motor_encendido = true
			puts 'Arrancando el motor'
		end
	end

end

