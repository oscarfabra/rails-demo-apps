
# Marshaling: Almacenar objetos para luego
# reusarlos cuando sea necesario

require 'C:/ruby193/programas/personaje.rb'

p1 = Personaje.new(120,'Caballero',['Cortar','Tacleo','Patada'])
puts p1.vida.to_s+' '+p1.tipo+' '
p1.armas.each do |arma|
	puts arma + ' '
end

# Creamos los objetos y los guardamos en un fichero
# usando Marshal.dump

File.open('juego.rb', 'w+') do |f|
	Marshal.dump(p1,f)
end

# Usamos Marshal.load para recuperarlos

File.open('juego.rb') do |f|
	p1 = Marshal.load(f)
end

puts p1.vida.to_s+' '+p1.tipo+' '
p1.armas.each do |w|
	puts w+' '
end

# Marshal únicamente serializa estructuras de datos
# no puede serializar código como Proc
# o recursos utilizados por otros procesos (como conexiones a BD)
