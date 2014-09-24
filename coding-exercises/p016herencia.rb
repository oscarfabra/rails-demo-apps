
class Mamifero
	def respirar
		puts 'inhalar, exhalar'
	end
end

# El s�mbolo < indica que Gato es
# una subclase de Mam�fero

class Gato < Mamifero
	def maullar
		puts 'Miaaaaauuuu'
	end
end

minino = Gato.new
minino.respirar
minino.maullar

# Sobreescritura de m�todos
# (method overriding)
# Programaci�n diferencial: vamos de
# lo m�s general a lo m�s particular

class Ave
	def asear
		puts 'Me estoy limpiando mis plumas'
	end
	
	def volar
		puts 'Estoy volando.'
	end
end

class Pinguino < Ave
	def volar
		puts 'Lo siento, no soy capaz de volar.'
	end
end

p= Pinguino.new
p.asear
p.volar

# Super

class Bicicleta
	attr_reader :velocidades, :ruedas, :asientos
	def initialize (velocidades = 1)
		@ruedas = 2
		@asientos = 1
		@velocidades = velocidades
	end
end

class Tandem < Bicicleta
	def initialize(velocidades)
		super
		@asientos = 2
	end
end

t = Tandem.new(4)
puts t.velocidades
puts t.ruedas
puts t.asientos

b = Bicicleta.new
puts b.velocidades
puts b.ruedas
puts b.asientos


