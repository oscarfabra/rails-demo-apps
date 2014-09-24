
# .. genera una secuencia donde los límites están incluidos

puts (1 .. 3).to_a

# ... genera una secuencia en la que no está incluida el límite superior

puts (1...5).to_a

# Los rangos tienen diversos métodos

nums = -1...9
puts nums.include?(5)						# true
puts nums.min												# -1
puts nums.max											# 8
puts nums.reject {|i| i < 5} 		# [5, 6, 7, 8]

# Verificar si un valor está en el intervalo

puts (1..10) === 5						# true
puts (1..10) === 15						# false
puts (1..10) === 3.14159		# true
puts ('a'..'j') === 'c'		# true