
# Puede ser un conjunto de elementos distintos

sabor = 'mango'
vec4 = [80.5, sabor, [true, false]]
puts vec4[2]

# Usando %w

nombres1 = ['ann','richard','william','susan']
puts nombres1[0]
puts nombres1[3]

nombres2 = %w{ann richard william susan pat}
puts nombres2[0]
puts nombres2[3]

# El metodo each

ciudades = %w{Pune Mumbai Bangalore}
ciudades.each do |ciudad|
	puts 'Me gusta ' + ciudad + '!'
	puts 'A ti no?'
end

# El metodo delete borra un elemento
ciudades.delete('Mumbai')
ciudades.each do |ciudad|
	puts 'Me gustaba ' + ciudad +'!'
	puts 'A ti no?'
end

# Otros métodos

vec = [34, 12, 1, 38]
puts vec.sort
puts vec.length
puts vec.first
puts vec.last

# Obteniendo arrays

def num_cuadrado(num)
	cuadrado = num * num
	return num, cuadrado
end

x=3
num_cuadrado(x)

num, cuadrado = num_cuadrado(x)

puts num, cuadrado

# Ejercicio 1

arr = [34,12,23,45,3]
sum = 0
arr.each do |numero|
	sum = sum + numero
end

puts "La suma es: " + sum.to_s

# Ejercicio 2

arr = [ 12, 23, 456, 123, 4579]
arr.each do |numero|
	if (numero % 2 == 0)
		puts "El numero "+numero.to_s+" es par."
	else
		puts "El numero "+numero.to_s+" es impar."
	end
end

