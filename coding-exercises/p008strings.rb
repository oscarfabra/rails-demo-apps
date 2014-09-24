
a = "Esta es una string de prueba"

puts String.instance_methods(false)

# Comparando dos cadenas

def compara_strings (s1, s2, s3)

	# Comprobamos si el contenido es igual
	
	if s1 == s2
		puts 'Ambos strings tienen el mismo contenido'
	else
		puts 'Ambos strings NO tienen el mismo contenido'
	end
	
	if s1.eql?(s2)
		puts 'Ambos strings tienen el mismo contenido'
	else
		puts 'Ambos strings NO tienen el mismo contenido'
	end
	
	# Comprobamos si ambos objetos son iguales
	
	if s1.equal?(s2)
		puts 'Ambos strings son el mismo objeto'
	else
		puts 'Ambos strings NO son el mismo objeto'
	end
	
	if s1.equal?(s3)
		puts 'Ambos strings son el mismo objeto'
	else
		puts 'Ambos strings NO son el mismo objeto'
	end
	
end

string1 = 'Jonathan'
string2 = 'Jonathan'
string3 = string1

compara_strings(string1,string2,string3)

# Ejercicio, dado un string, invertirlo palabra por palabra

palabras = "Este es un string de ejemplo"
puts palabras.split(" ").reverse.join(" ")

