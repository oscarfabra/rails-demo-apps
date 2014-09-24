
# Expresión regular es una forma de especificar
# un patrón de caracteres que será buscado en un string

m1 = /Ruby/.match("El futuro es Ruby")
puts m1
puts m1.class

# Operador {{** =~ **}}

m2 = "El futuro es Ruby" =~ /Ruby/
puts m2

# La \ significa "no trates el siguiente carácter como especial"
# Los caracteres especiales incluyen ^, $, ? , ., /, \, [, ], {, }, (, ), + y *

m2 = /\?/.match("Como estas hoy?")
puts m2

# El comodín . (punto) Busca cualquier caracter
# excepto el retorno de carro

m3 = /.ado/.match("Hoy estoy muy motivado")
puts m3

# Clases de caracteres, una lista específica

/[mc]ado/

m3 = /[mcv]ado/.match("Hoy estoy muy motivado")
puts m3

# También se puede especificar un rango de búsqueda

m4 = /[a-z]/.match("Hoy estoy muy motivado")
puts m4

# Cuando se necesita encontrar cualquier carácter 
# menos aquellos de una lista específica

/[^A-Fa-f0-9]/ # encuentra cualquier carácter, menos los hexadecimales

# Abreviaciones para clases de caracteres

puts /[0-9]/.match("Son 10 los mandamientos")
puts /\d/.match("Son 10 los mandamientos")

puts ""
puts ""

# \w encuentra cualquer dígito, letra, o guión bajo
# \s encuentra cualquier carácter whitespace
# \S cualquier carácter que no sea de espacio
# \d número; lo mismo que [0-9]
# \D cualquier carácter que no sea un número
# \b retroceso (0x08), si está dentro de un rango
# \B no límite de palabra
# * cero o más repeticiones de lo que le precede
# + una o más repeticiones de lo que le precede
# $ fin de la línea
# {m.n} como menos m, y como mucho n repeticiones de lo que le precede
# ? al menos una repetición de lo que le precede; lo mismo que {0,1}
# () agrupar expresiones
# || operador lógico, busca lo de antes o lo de después

#Una búsqueda con éxito devuelve un objeto MatchData

string = "Mi numero de telefono es (123) 555-1234."
num_expr = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = num_expr.match(string)

unless m
  puts "No hubo conocerdancias."
  exit
end

print "El string de la busqueda es: "
puts m.string
print "La parte del string que concuerda con la busqueda es: "
puts m[0]
puts "Las tres capturas: "
3.times do |index|
	# m.captures[index] - subcadenas encontradas (subcaden = () en la expresión)
	puts "Captura ##{index + 1}: #{m.captures[index]}"
end
puts "Otra forma para poner la primera captura: "
print "Captura #1: "
puts m[1]  # cada número correspondiente a una captura
