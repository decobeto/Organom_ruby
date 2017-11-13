def valores 
	@vencedor = nil
	@deu_velha = false
	@a1 = " "
	@a2 = " "
	@a3 = " "
	@b1 = " "
	@b2 = " "
	@b3 = " " 
	@c1 = " "
	@c2 = " "
	@c3 = " "
end

def tabuleiro
	puts
	puts "    1   2   3"
	puts
	puts "A   #{@a1} | #{@a2} | #{@a3}"
	puts "   ---|---|---"
	puts "B   #{@b1} | #{@b2} | #{@b3}"
	puts "   ---|---|---"
	puts "C   #{@c1} | #{@c2} | #{@c3}"
	puts
end


def jogador (letra)
	tabuleiro
	loop do
	puts "Escolha um quadrado para efeturar a jogada: "
	jogada = gets.chomp.downcase
		if instance_variable_get("@#{jogada}") != " "
			puts "Jogada invalida, esta posição já esta ocupada"
		elsif instance_variable_set("@" + jogada, letra)
			verifica_vencedor(letra)	
			verifica_velha(letra)	
		break
		end
	end
end

def verifica_vencedor (letra)
	if (@a1 == letra && @a2 == letra && @a3 == letra) ||
	   (@b1 == letra && @b2 == letra && @b3 == letra) ||
	   (@c1 == letra && @c2 == letra && @c3 == letra) ||
	   (@a1 == letra && @b2 == letra && @c3 == letra) ||
	   (@a3 == letra && @b2 == letra && @c1 == letra) ||
	   (@a3 == letra && @b3 == letra && @c3 == letra) ||
	   (@a2 == letra && @b2 == letra && @c2 == letra) ||
	   (@a1 == letra && @b1 == letra && @c1 == letra) 
		@vencedor = "#{letra}"
	end
end

def verifica_velha (letra)
	if (@a1 != " " && @a2 != " " && @a3 != " ") &&
	   (@b1 != " " && @b2 != " " && @b3 != " ") &&
	   (@c1 != " " && @c2 != " " && @c1 != " ")  
	   # puts "Deu velha!!!!!!!!!!!!"
	   @deu_velha = true
	end
end

def jogador1
 	jogador("X")
end	

def jogador2 	
	jogador("O")
end


def jogo
	puts "Quem é o primeiro a jogar? (X/O)"
	primeiro  = gets.chomp.upcase 
			
	while
		if (primeiro == "O")
			jogador2
			ultimajogada = "jogador2"
		elsif (primeiro == "X")
			jogador1
			ultimajogada = "jogador1"
		end

		if (@vencedor != nil)
			tabuleiro
	   		puts "Parabéns o jogador #{@vencedor} ganhou :)"
			break
		elsif(@deu_velha)
			puts "Deu velha!!!"
			break

		end
	
		if (ultimajogada == "jogador1")  
			jogador2
		elsif (ultimajogada == "jogador2")  
			jogador1
		end
		
	end
end
 
def comecar
	valores	
	jogo
end
comecar	
