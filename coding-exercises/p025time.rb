
# Para obtener el tiempo

t = Time.now

puts t.strftime("%d/%m/%Y %H:%M:%S")
# strftime - formatear tiempo (stringfy time)
# %d - d�a (day)
# %m - mes (month)
# %Y - a�o (year)
# %H - hora en formato 24 horas (hour)
# %M - minuto
# %S - segundo (second)

puts t.strftime("%A")
puts t.strftime("%B")
# %A - d�a de la semana
# %B - mes del a�o

puts t.strftime("son las %H:%M %Z")
# %Z - zona horaria
