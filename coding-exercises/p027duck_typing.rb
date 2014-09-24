
# Duck Typing se refiere a la tendencia de Ruby a
# centrarse menos en la clase de un objeto,
# y dar prioridad a su compartamiento
# qu� m�todos se pueden usar, y qu� operaciones
# se pueden hacer con �l

# Se llama "Duck Typing" porque est� basado en el
# Test del Pato (Duck Test):

# Si camina como un pato, nada como un pato y
# hace "quack", podemos tratarlo como un pato.
# (James Whitcomb Riley)

class Pato
	def quack
		'Quack!'
	end
	
	def nadar
		'Paddle paddle paddle...'
	end
end

class Ganso
	def honk
		'Honk!'
	end
	
	def nadar
		'Splash splash splash...'
	end
end

class GrabadoraDePatos
	def quack
		play
	end
	
	def play
		'Quack!'
	end
end

# En este m�todo, la Grabadora se comporta como Pato

def haz_quack(pato)
	pato.quack
end

puts haz_quack(Pato.new)
puts haz_quack(GrabadoraDePatos.new)

# En este m�todo el Ganso se comporta como Pato

def haz_nadar(pato)
	pato.nadar
end

puts haz_nadar(Pato.new)
puts haz_nadar(Ganso.new)
