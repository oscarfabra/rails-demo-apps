
# SIN accesores

class Cancion
	def initialize(titulo, artista)
		@titulo = titulo
		@artista = artista
	end
	def titulo
		@titulo
	end
	def artista
		@artista
	end
end

cancion = Cancion.new("Espiritu Santo", "Su Presencia")
puts cancion.titulo
puts cancion.artista

# CON accesores

class Cancion
	def initialize(titulo, artista)
		@titulo = titulo
		@artista = artista
	end
	
	# Accesor de lectura
	# attr_reader :titulo, :artista
	
	# Accesor de escritura
	# attr_writer :titulo
	
	# Accesor de escritura y lectura
	attr_accessor :titulo, :artista
end

cancion = Cancion.new("Espiritu Santo", "Su Presencia")
puts cancion.titulo
puts cancion.artista


# Escritura

cancion.titulo = "Tu, solo Tu"
cancion.artista = "Su Presencia"

puts cancion.titulo
puts cancion.artista