
# Farenheit a Celsius
puts "Cual es la temperatura Farenheit?"
STDOUT.flush
f = gets.chomp
c = (f.to_i-32)*(5.0/9)
puts "La temperatura Celsius es #{(c*100).round/100.0}."

