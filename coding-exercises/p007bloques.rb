# yield

def metodo
	puts 'Comienzo del metodo'
	yield
	yield
	puts 'Final del metodo'
end

metodo {puts 'Dentro del bloque'}

# Argumentos en los bloques

def metodo2
	yield('hola',99)
end

metodo2 {|str,num| puts str+' '+num.to_s}


# Los procs: convierte los bloques en objetos
# estos metodos se llaman con call

prc = lambda{puts "Hola"}
prc.call

toast = lambda do
	puts "Gracias"
end

toast.call

# Para usar argumentos con lambda
# sirven para pasar métodos como argumentos
# o devolverlos de un método

aBlock = lambda {|x| puts x}
aBlock.call "Hola Mundo!"

# Uso de procs como argumentos

def metod1 proc1
	puts 'Principio del metodo'
	proc1.call
	puts 'Final del metodo'
end

hola = lambda do
	puts "Gracias"
end

metod1 hola

