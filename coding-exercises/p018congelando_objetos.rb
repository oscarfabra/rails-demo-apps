
# Objetos inmutables: no pueden cambiar de estado
# despu�s de ser creados
# Para evitar que un m�todo lo modifique
# La mutabilidad es propiedad de los objetos
# a menos que se use freeze

# El m�todo freeze evita que un objeto pueda modificarse
# convirti�ndolo en una constante

str = 'Un simple string'
str.freeze


begin
	str << 'Intento de modificarlo'
rescue => err
	puts "#{err.class} #{err}"
end


# freeze funciona con las referencias, no con variables
# si creamos un objeto nuevo y sobreescribimos la variable,
# este se podra modificar

str = 'String original - '
str.freeze
str += 'esto fue agregado a posteriori'
puts str


# El objeto original no cambio, la variable str
# se refiere a un nuevo objeto

# El metodo frozen? nos dice si un objeto esta congelado
