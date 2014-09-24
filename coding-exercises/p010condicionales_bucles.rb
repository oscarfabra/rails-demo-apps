
# if-elsif-else

puts 'Hola, cual es tu nombre?'
STDOUT.flush
nombre = gets.chomp
puts 'Hola, ' + nombre + '.'

if nombre == ('Mojamuto' || 'Enjuto')
	puts 'Pedazo de nombre!!!'
end

# case

num = 10

if num % 2 == 0
	puts 'La variable num es par'
else
	puts 'La variable num es impar'
end


num = 10

par = case
	when num % 2 == 0 then true
	when num % 2 != 0 then false
end

puts par

# unless = if not

nombre = 'Pepe'
unless nombre == 'Enjuto'
  puts "Ese nombre no es Enjuto"
end

# Ejercicio

puts "Hola, escribe un anio: "
STDOUT.flush
anio = gets.chomp
a = anio.to_i
es_bisiesto = true
minutos = 0

if (a % 4==0 and not a %100 ==0) or (a % 400 ==0)
  es_bisiesto = true
  minutos = 366 * 24 * 60
else
	es_bisiesto = false
	minutos = 365 * 24 * 60
end

if es_bisiesto
	puts "Ese es un anio bisiesto"
else
	puts "No es un anio bisiesto"
end

puts "El numero de minutos que tiene es: "+minutos.to_s
