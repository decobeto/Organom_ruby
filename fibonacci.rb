fibonacci = Array.new

puts "Digite o número de vezes que a sequência será executada: "
vezes = gets.chomp.to_i

puts "Digite o primero número: "
a = gets.chomp.to_i

puts "Digite o segundo número: "
b = gets.chomp.to_i

contador = 0
puts " "

while contador != vezes 
  contador = contador + 1
  c = a + b 
  fibonacci << c
  a = c + b
  fibonacci << a
  b = c + a 
  fibonacci << b
  p fibonacci
end