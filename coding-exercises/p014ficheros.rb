
# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# automáticamente al acabar el bloque

File.open('fichero.txt','r') do |f1|
	while linea = f1.gets
		puts linea
	end
end

# Crea un nuevo fichero, y escribe
File.open('text.txt','w') do |f2|
	f2.puts "Por que la vida \npuede ser maravillosa"
end

# Consultar documentación, ejemplo: readline copia el fichero línea por línea

# Manejando directorios: Módulo Find

require 'find'

# muestra la ruta ./
# que es el directorio de Ruby

Find.find('./') do |f|
	type = case
		
		# si la ruta es un fichero -> F
		when File.file?(f) then "F"
		
		# si la ruta es un directorio -> D
		when File.directory?(f) then "D"
		
		# si no sabemos lo que es -> ?
		else "?"
		end
		
		# formatea el resultado
		puts "#{type}: #{f}"
	end


# Acceso aleatorio

f = File.new("fichero.txt")

f.seek(6, IO::SEEK_SET) # Ubica el cursos en esa ubicación
print f.readline
f.close

# Salvar un objeto y algunos o todos de sus componentes
# se realiza mediante el método Marshall.dum
