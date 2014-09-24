
# Una librería es un fichero que contiene métodos y clases
# para su uso a posteriori

# Require lee una sola vez

require 'C:/ruby193/programas/hola.rb'
require 'C:/ruby193/programas/hola.rb'
require 'C:/ruby193/programas/hola.rb'

# Load lee el fichero tantas veces como aparezca
# En Rails se suele usar load

load 'C:/ruby193/programas/hola.rb'
load 'C:/ruby193/programas/hola.rb'
load 'C:/ruby193/programas/hola.rb'


require 'C:/ruby193/programas/moto.rb'
m = Moto.new('Yamaha','rojo')
m.arrancar

m.arrancar


