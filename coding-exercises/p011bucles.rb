
# bucles

var = 0
while var <10
	puts var.to_s
	var += 1
end

# times

num = 0

10.times do |num|
	puts num
end


def carta_aleatoria
	palos = %w{corazones treboles picas diamantes}
	numeros = %w{1 2 3 4 5 6 7 8 9 10 J Q K}
	
	palo_aleatorio = rand(palos.length)
	
	numero_aleatorio = rand(numeros.length)
	
	puts numeros[numero_aleatorio]+' de '+palos[palo_aleatorio]
end

carta_aleatoria

10.times do
	carta_aleatoria
end