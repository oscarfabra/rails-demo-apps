# Asignación de argumentos

def mtd(arg1 = "Dibya", arg2 = "Shashank", arg3 = "Shashank")
	"#{arg1}, #{arg2}, #{arg3}."
end

puts mtd
puts mtd("ruby")


#Número de argumentos variable

def foo(*mi_string)
	mi_string.each do |palabras|
		puts palabras
	end
end

foo('hola', 'mundo')
foo()

# Orden de argumentos fijos y luego opcionales

def mtd(a=99, b=a+1)
	[a,b]
end
puts mtd

