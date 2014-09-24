
# Expresi�n regular es una forma de especificar
# un patr�n de caracteres que ser� buscado en un string

m1 = /Ruby/.match("El futuro es Ruby")
puts m1
puts m1.class

# Operador {{** =~ **}}

m2 = "El futuro es Ruby" =~ /Ruby/
puts m2

# La \ significa "no trates el siguiente car�cter como especial"
# Los caracteres especiales incluyen ^, $, ? , ., /, \, [, ], {, }, (, ), + y *

m2 = /\?/.match("Como estas hoy?")
puts m2

# El comod�n . (punto) Busca cualquier caracter
# excepto el retorno de carro

m3 = /.ado/.match("Hoy estoy muy motivado")
puts m3

# Clases de caracteres, una lista espec�fica

/[mc]ado/

m3 = /[mcv]ado/.match("Hoy estoy muy motivado")
puts m3

# Tambi�n se puede especificar un rango de b�squeda

m4 = /[a-z]/.match("Hoy estoy muy motivado")
puts m4

# Cuando se necesita encontrar cualquier car�cter 
# menos aquellos de una lista espec�fica

/[^A-Fa-f0-9]/ # encuentra cualquier car�cter, menos los hexadecimales

# Abreviaciones para clases de caracteres

puts /[0-9]/.match("Son 10 los mandamientos")
puts /\d/.match("Son 10 los mandamientos")

puts ""
puts ""

# \w encuentra cualquer d�gito, letra, o gui�n bajo
# \s encuentra cualquier car�cter whitespace
# \S cualquier car�cter que no sea de espacio
# \d n�mero; lo mismo que [0-9]
# \D cualquier car�cter que no sea un n�mero
# \b retroceso (0x08), si est� dentro de un rango
# \B no l�mite de palabra
# * cero o m�s repeticiones de lo que le precede
# + una o m�s repeticiones de lo que le precede
# $ fin de la l�nea
# {m.n} como menos m, y como mucho n repeticiones de lo que le precede
# ? al menos una repetici�n de lo que le precede; lo mismo que {0,1}
# () agrupar expresiones
# || operador l�gico, busca lo de antes o lo de despu�s

#Una b�squeda con �xito devuelve un objeto MatchData

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
	# m.captures[index] - subcadenas encontradas (subcaden = () en la expresi�n)
	puts "Captura ##{index + 1}: #{m.captures[index]}"
end
puts "Otra forma para poner la primera captura: "
print "Captura #1: "
puts m[1]  # cada n�mero correspondiente a una captura
