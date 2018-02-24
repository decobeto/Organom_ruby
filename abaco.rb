def primeira_pergunta
  puts "Digite um número: "
  @a = gets.chomp.to_f
  puts "Digite o operador: "
  @b = gets.chomp
  puts "Digite outro número: "
  @c = gets.chomp.to_f
end

def segunda_pergunta
  puts "Digite outro operador: "
  @b = gets.chomp
  puts "Digite mais um número: "
  @a = gets.chomp.to_f
end
  
def engine
  if (@contador == 0)
    case (@b) 
      when "+"
      @d = @a + @c
      puts "Resultado: #{@d}"
      when "-"
      @d = @a - @c
      puts "Resultado: #{@d}"
      when "/"
      @d = @a / @c
      puts "Resultado: #{@d}"
      when "*"
      @d = @a * @c
      puts "Resultado: #{@d}"
      when "="
      puts "Resultado: #{@d}" 
    end
    @resultado << @d
  elsif (@contador >= 1)
    case (@b) 
      when "+"
      @d = @d + @a 
      puts "Resultado: #{@d}"
      when "-"
      @d = @d - @a
      puts "Resultado: #{@d}"
      when "/"
      @d = @d / @a
      puts "Resultado: #{@d}"
      when "*"
      @d =  @d * @a
      puts "Resultado: #{@d}"
      when "="
      puts "Resultado: #{@d}" 
    end
  end
  @resultado << @d
end

def abaco
  @contador = 0
  @resultado = Array.new
  primeira_pergunta
  engine
  while (@b != "=")
    @contador = @contador + 1
    segunda_pergunta
    engine
  end
end

abaco


