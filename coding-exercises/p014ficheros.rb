
# Abre y lee un fichero
# Se usa un bloque: el fichero se cierra
# autom�ticamente al acabar el bloque

File.open('fichero.txt','r') do |f1|
	while linea = f1.gets
		puts linea
	end
end

# Crea un nuevo fichero, y escribe
File.open('text.txt','w') do |f2|
	f2.puts "Por que la vida \npuede ser maravillosa"
end

# Consultar documentaci�n, ejemplo: readline copia el fichero l�nea por l�nea

# Manejando directorios: M�dulo Find

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

f.seek(6, IO::SEEK_SET) # Ubica el cursos en esa ubicaci�n
print f.readline
f.close

# Salvar un objeto y algunos o todos de sus componentes
# se realiza mediante el m�todo Marshall.dum
