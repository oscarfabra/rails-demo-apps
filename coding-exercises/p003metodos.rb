class S
	def m
		puts 'Clase S, metodo m:'
		puts self
	end
end
s = S.new
s.m

def hello
	puts 'Hola'
end

hello

def hello1(nombre)
	puts 'Hola ' + nombre
	return 'correcto'
end

puts(hello1('Pedro'))


# métodos bang (!)

a = "En un lugar de la mancha"

b = a.upcase
puts b
puts a

c = a.upcase!
puts c
puts a


#Alias de metodos

def viejo_metodo
	"Viejo metodo"
end

alias nuevo_metodo viejo_metodo
def viejo_metodo
	"Viejo metodo mejorado"
end
puts viejo_metodo
puts nuevo_metodo


# Métodos perdidos

class Dummy
	def method_missing(m, *args)
		puts "No existe un metodo llamado #{m}."
	end
end

d = Dummy.new
d.cualquier_cosa
