
# El objetivo de estas abreviaciones es brindar un mecanismo 
# para escribir menos codigo


class Perro
	def initialize(raza)
		@raza = raza
	end
	
	attr_reader :raza, :nombre # lector
	# modificador
	def nombre=(nb)
		@nombre = nb
	end
end

pe = Perro.new('Doberman')
pe.nombre='Benzy'

puts pe.nombre

