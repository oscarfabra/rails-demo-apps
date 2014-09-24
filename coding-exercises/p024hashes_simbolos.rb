
# Hashes y símbolos

# Un simbolo es un nombre y una ID interna
# Es una referencia al mismo objeto

puts "hola".object_id
puts "hola".object_id
puts :hola.object_id
puts :hola.object_id

# Si el contenido del objeto es lo importante, usa un string
# Si la identidad del objeto es importante, usa un símbolo
# puts Symbol.all_symbols

# Hashes son arrayas asociativos
# Comparado con arrays, hay una ventaja:
# Se puede usar cualquier objeto como índice

h = {
'perro'=>'canino',
'gato'=>'felino',
'burro'=>'asno',
12=>'docena'
}

puts h.length
puts h['perro']
puts h
puts h[12]

# Simbolos como indices

persona = Hash.new
persona[:nombre] = 'Pedro'
persona[:apellido] = 'Picapiedra'

puts persona[:nombre]

# Es equivalente a

persona = {:nombre=>'Pedro', :apellido=>'Picapiedra'}

puts persona[:apellido]


