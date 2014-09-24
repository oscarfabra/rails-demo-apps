
class ControlAcceso
	def m1
	end
	
	protected
	def m2
	end
	
	private
	def m3
	end
	def m4
	end

end

ca = ControlAcceso.new
ca.m1
ca.m2
ca.m3

# Otra forma de especificar

class ControlAcceso
	def m1
	end
	def m2
	end
	def m3
	end
	def m4
	end
	
	public :m1
	protected :m2
	private :m3, :m4
end

ca = ControlAcceso.new
ca.m1
ca.m2
ca.m3

# Protected

class Persona
	def initialize(edad)
		@edad = edad
	end
	def edad
		@edad
	end
	def comparar_edad(op)
		if op.edad > edad
			'La edad de la otra persona es mayor.'
		else
			'La edad de la otra persona es la misma o menor.'
		end
	end
	protected :edad
end

pedro = Persona.new(15)
almudena = Persona.new(17)
puts pedro.comparar_edad(almudena)