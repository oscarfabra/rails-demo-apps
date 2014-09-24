
# Constante es una referencia inmutable a un objeto
# Alcance de las constantes
# Las constantes definidas dentro de una clase o modulo pueden ser usadas en esa clase o modulo.
# Fuera de la clase o módulo se usan mediante el operador ::
# Las definidas fuera de cualquier clase o modulo pueden ser usadas mediante el operador :: pero sin palabra que lo preceda
# NO pueden ser definidas dentro de un método

CONST_EXTERNA = 99

class Const
	CONST = CONST_EXTERNA + 1
	def get_const
		CONST
	end
end

puts Const.new.get_const
puts Const::CONST
puts ::CONST_EXTERNA
puts Const::NEW_CONST = 123

# Repaso a los tipos de variables

# los nombres de las variables y métodos empiezan por minúsculas

$glob = 5										# Las variables globales empiezan por $
class TestVar						# nombre de clase, empieza por mayúsculas
	@@cla = 6								# las variables de clase empiezan por @@
	CONST_VAL = 7				# constante: todo mayúsculas y/o _
	def initialize(x)				# constructor
		@inst = x								# variables de objeto empiezan por @
		@@cla +=1						# cada objeto comparte @@cla
	end
	def self.cla							# método de clase, lector de atributo
		@@cla +=1
	end
	def self.cla=(y)				# método de clase, modificador de atributo
	end
	def inst										# método de objeto, lector
		@inst
	end
	def inst=(i)							# método de objeto, modificador
		@inst=i
	end
end

puts $glob
test = TestVar.new(3)
puts test.inspect
TestVar.cla = 4
test.inst = 8
puts test.inst
puts TestVar.cla
otro = TestVar.new(17)
# 'cla' se modifica cada vez que se crea un objeto
puts TestVar.cla
puts otro.inspect
