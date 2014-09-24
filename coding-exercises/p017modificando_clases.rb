

require 'C:/ruby193/programas/moto.rb'
m = Moto.new('Yamaha','rojo')
m.arrancar

# Agregar un metodo a la clase Moto

class Moto
	def informe_moto
		puts 'El color de la moto es '+@color
		puts 'La marca de la moto es '+@marca
	end
end

m.informe_moto

# Agregar un metodo a la clase String
# Preferiblemente usar subclases
# para evitar conflictos

class String
	def num_caracteres
		puts self.size
	end
end

texto = 'Cielo abiertos, suelo reverdecido'
texto.num_caracteres

# Sobrecarga de metodos (methods overloading)
# Para tener métodos distintos con el mismo nombre
# se puede jugar con el número de argumentos

class Cuadrado
	def initialize(*args)
		if args.size <2 || args.size>3
			puts 'ERROR: Este metodo toma dos o tres argumentos'
		else
			if args.size == 2
				puts 'Dos argumentos'
			else
				puts 'Tres argumentos'
			end
		end
	end

end

Cuadrado.new([10,23],4,10)
Cuadrado.new([10,23],[14,23])
Cuadrado.new([10,23],[14,23],4,10)

			