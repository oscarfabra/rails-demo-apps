
# El testeo de unidades es un método para testear
# el código en pequeños trozos
# Evita el problema de crear un error mientras
# soluciones otro

# Requisitos
# Cargar 'test/unit'
# Hacer que la clase a testear sea una subclase de
# Test::Unit::TestCase
# Escribir los métodos con el prefijo test_
# Asegurar (assert) las cosas que decidas que sean correctas
# Ejecutar los tests y corregir los errores

require 'mates'
require 'test/unit'
 
class TestDeMates < Test::Unit::TestCcase
  def test_suma
    assert_equal 4, Mates.run("2+2")
    assert_equal 4, Mates.run("1+3")
    assert_equal 5, Mates.run("5+0")
    assert_equal 0, Mates.run("-5 + 5")
  end
 
  def test_resta
    assert_equal 0, Mates.run("2-2")
    assert_equal 1, Mates.run("2-1")
    assert_equal -1, Mates.run("2-3")
  end
	
	def test_para_no_numericos 
    assert_raises(ErrorNoNumerico) do
      Mates.run("a + 2")
    end
  end
 
  def test_division_por_cero 
    assert_raises(ErrorDivisionPorZero) do
      Mates.run("4/0")
    end
	end