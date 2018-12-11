def valores
  @jogada = Array.new
  @jogada_da_partida = Array.new
end

def apresentacao
  puts "
                      ###POKER - DESAFIO###"
  puts "Para executar as ações é necessário escolher um número correspondente a sua jogadas..."
end

def jogadas_do_poker
  puts " "
  puts "Essas são as jogadas possiveis no poker, selecione a sua: "
  puts "1 - CARTA ALTA"
  puts "2 - UM PAR"
  puts "3 - DOIS PARES"
  puts "4 - TRINCA"
  puts "5 - STRAIGHT"
  puts "6 - FLUSH"
  puts "7 - FULL HOUSE"
  puts "8 - QUADRA"
  puts "9 - STRAIGHT FLUSH"
  puts "10 - ROYAL FLUSH"
end

def naipes_do_poker
  puts " "
  puts "Esses são os naipes das cartas utilizadas no poker:"
  puts "1 - Paus (C)"
  puts "2 - Espadas (S)"
  puts "3 - Copa (H)"
  puts "4 - Ouro (D)"
end

def cartas_do_poker
  puts " "
  puts "Essas são as cartas presentes no poker: "
  puts "2 - DOIS(2)"
  puts "3 - TRÊS(3)"
  puts "4 - QUATRO(4)"
  puts "5 - CINCO(5)"
  puts "6 - SEIS(6)"
  puts "7 - SETE(7)"
  puts "8 - OITO(8)"
  puts "9 - NOVE(9)"
  puts "10 - DEZ(10)"
  puts "11 - VALETE"
  puts "12 - DAMA"
  puts "13 - REI"
  puts "14 - ÁS"
end

def verifica_vencedor(valor_jogador1, valor_jogador2)
  if (valor_jogador1 > valor_jogador2)
    @vencedor = "Jogador 1"
    puts "O vencedor é o #{@vencedor}"
  elsif (valor_jogador1 < valor_jogador2)
    @vencedor = "Jogador 2"
    puts  "O vencedor é o #{@vencedor}"
  else
    puts "Algo de errado não está certo"
  end  
end

def verifica_primeiro_vencedor
  if (@jogada[0] > @jogada[1])
    @vencedor = "Jogador 1"
    puts "O vencedor é o #{@vencedor}"
  elsif (@jogada[1] > @jogada[0])
    @vencedor = "Jogador 2"
    puts  "O vencedor é o #{@vencedor}"
  elsif (@jogada[0] == @jogada[1])
    comparador
  end
end

def jogo
  jogadas_do_poker
  puts "Jogador 1 insira sua jogada: "
  @jogada << gets.chomp.to_i
  puts "Jogador 2 insira sua jogada: "
  @jogada << gets.chomp.to_i

  verifica_primeiro_vencedor
end

def comparador
  if (@jogada[0] && @jogada[1] == 1)
    carta_alta
  elsif (@jogada[0] && @jogada[1] == 2)
    um_par
  elsif (@jogada[0] && @jogada[1] == 3)
    dois_pares
  elsif (@jogada[0] && @jogada[1] == 4)
    trinca
  elsif (@jogada[0] && @jogada[1] == 5)
    straight
  elsif (@jogada[0] && @jogada[1] == 6)
    flush
  elsif (@jogada[0] && @jogada[1] == 7)
    full_house
  elsif (@jogada[0] && @jogada[1] == 8)
    quadra
  elsif (@jogada[0] && @jogada[1] == 9)
    straight_flush
  elsif (@jogada[0] && @jogada[1] == 10)
    royal_flush
  end
end

def carta_alta
  puts ""
  puts "Parece que ambos tiveram uma carta alta: "
  naipes_do_poker
  cartas_do_poker
  contador = 1
  5.times do
    puts "Jogador 1 insira sua carta nº#{contador}: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 1: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Jogador 2 insira sua carta: nº#{contador}"
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 2: "
    @jogada_da_partida << gets.chomp.to_i
    contador += 1
  end
  valor_jogador1 = @jogada_da_partida[0] + @jogada_da_partida[1] + @jogada_da_partida[4] + @jogada_da_partida[5] + @jogada_da_partida[8] + @jogada_da_partida[9] + @jogada_da_partida[12] + @jogada_da_partida[13] + @jogada_da_partida[16] + @jogada_da_partida[17]
  valor_jogador2 = @jogada_da_partida[2] + @jogada_da_partida[3] + @jogada_da_partida[6] + @jogada_da_partida[7] + @jogada_da_partida[10] + @jogada_da_partida[11] + @jogada_da_partida[14] + @jogada_da_partida[15] + @jogada_da_partida[18] + @jogada_da_partida[19]

  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def um_par
  puts ""
  puts "Parece que ambos tiveram pares: "
  cartas_do_poker
  contador = 3

  puts "Jogador 1 insira a carta que compõe seu par: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o seu par Jogador 1"
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe seu par: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o seu par Jogador 2"
  @jogada_da_partida << gets.chomp.to_i

  3.times do
    puts "Jogador 1 insira sua carta nº#{contador}: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 1: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Jogador 2 insira sua carta: nº#{contador}"
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 2: "
    @jogada_da_partida << gets.chomp.to_i
    contador += 1
  end
  
  valor_jogador1 = ((@jogada_da_partida[0] + @jogada_da_partida[1]) * 2) + @jogada_da_partida[4] + @jogada_da_partida[5] + @jogada_da_partida[8] + @jogada_da_partida[9] + @jogada_da_partida[12] + @jogada_da_partida[13]
  valor_jogador2 = ((@jogada_da_partida[2] + @jogada_da_partida[3]) * 2) + @jogada_da_partida[6] + @jogada_da_partida[7] + @jogada_da_partida[10] + @jogada_da_partida[11] + @jogada_da_partida[14] + @jogada_da_partida[15]


  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def dois_pares
  puts ""
  puts "Parece que ambos tiveram dois pares: "
  cartas_do_poker
  naipes_do_poker
  contador = 5

  puts "Jogador 1 insira a carta que compõe seu par: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o seu par Jogador 1"
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe seu par: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o seu par Jogador 2"
  @jogada_da_partida << gets.chomp.to_i

  puts "Jogador 1 insira sua carta nº#{contador}: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe de sua carta nº#{contador} Jogador 1: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira sua carta: nº#{contador}"
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe de sua carta nº#{contador} Jogador 2: "
  @jogada_da_partida << gets.chomp.to_i
  contador += 1
  
  valor_jogador1 = ((@jogada_da_partida[0] + @jogada_da_partida[1]) * 2) + ((@jogada_da_partida[4] + @jogada_da_partida[5]) * 2) + @jogada_da_partida[8] + @jogada_da_partida[9]
  valor_jogador2 = ((@jogada_da_partida[2] + @jogada_da_partida[3]) * 2) + ((@jogada_da_partida[6] + @jogada_da_partida[7]) * 2) + @jogada_da_partida[10] + @jogada_da_partida[11]


  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def trinca
  puts ""
  puts "Parece que ambos tiveram uma trinca: "
  naipes_do_poker
  cartas_do_poker
  contador = 4

  puts "Jogador 1 insira a carta que compõe sua trinca: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o sua trinca Jogador 1"
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe sua trinca: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Também insira o naipe da carta que compõe o sua trinca Jogador 2"
  @jogada_da_partida << gets.chomp.to_i

  2.times do
    puts "Jogador 1 insira sua carta nº#{contador}: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 1: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Jogador 2 insira sua carta: nº#{contador}"
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 2: "
    @jogada_da_partida << gets.chomp.to_i
    contador += 1
  end
  
  valor_jogador1 = ((@jogada_da_partida[0] + @jogada_da_partida[1]) * 3) + @jogada_da_partida[4] + @jogada_da_partida[5] + @jogada_da_partida[8] + @jogada_da_partida[9]
  valor_jogador2 = ((@jogada_da_partida[2] + @jogada_da_partida[3]) * 3) + @jogada_da_partida[6] + @jogada_da_partida[7] + @jogada_da_partida[10] + @jogada_da_partida[11]


  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def straight
  puts ""
  puts "Parece que ambos tiveram um Straight: "
  naipes_do_poker
  cartas_do_poker
  contador = 1

  5.times do
    puts "Jogador 1 insira sua carta nº#{contador}: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 1: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Jogador 2 insira sua carta: nº#{contador}"
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta nº#{contador} Jogador 2: "
    @jogada_da_partida << gets.chomp.to_i
    contador += 1
  end
  
  valor_jogador1 = @jogada_da_partida[0] + @jogada_da_partida[1] + @jogada_da_partida[4] + @jogada_da_partida[5] + @jogada_da_partida[8] + @jogada_da_partida[9] + @jogada_da_partida[12] + @jogada_da_partida[13] + @jogada_da_partida[16] + @jogada_da_partida[17]
  valor_jogador2 = @jogada_da_partida[2] + @jogada_da_partida[3] + @jogada_da_partida[6] + @jogada_da_partida[7] + @jogada_da_partida[10] + @jogada_da_partida[11] + @jogada_da_partida[14] + @jogada_da_partida[15] + @jogada_da_partida[18] + @jogada_da_partida[19]


  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def flush
  puts ""
  puts "Parece que ambos tiveram um Flush: "
  naipes_do_poker
  cartas_do_poker
  contador = 1
  2.times do
    puts "Jogador #{contador} insira a carta inicial do seu flush: "
    @jogada_da_partida << gets.chomp.to_i
    puts "Também insira o naipe de sua carta Jogador #{contador}: "
    @jogada_da_partida << gets.chomp.to_i
    contador += 1
  end
  valor_jogador1 = @jogada_da_partida[0] + @jogada_da_partida[1] 
  valor_jogador2 = @jogada_da_partida[2] + @jogada_da_partida[3]

  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def full_house
  puts ""
  puts "Parece que ambos tiveram um Full House: "
  cartas_do_poker
  contador = 4

  puts "Jogador 1 insira a carta que compõe a trinca do seu full house: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 1 insira a carta que compõe a dupla do seu full house: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe a trinca do seu full house: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe a dupla do seu full house: "
  @jogada_da_partida << gets.chomp.to_
  
  valor_jogador1 = ((@jogada_da_partida[0] * 3) + (@jogada_da_partida[1] * 2))
  valor_jogador2 = ((@jogada_da_partida[2] * 3) + (@jogada_da_partida[3] * 2))


  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def quadra
  puts " "
  puts "Parece que ambos tiveram uma Quadra: "
  cartas_do_poker
  puts "Jogador 1 insira a carta que compõe a sua quadra: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 1 também insira a sua quinta carta: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 insira a carta que compõe a sua quadra: "
  @jogada_da_partida << gets.chomp.to_i
  puts "Jogador 2 também insira a sua quinta carta: "
  @jogada_da_partida << gets.chomp.to_i

  valor_jogador1 = (@jogada_da_partida[0] * 4) + (@jogada_da_partida[1] * 1)
  valor_jogador2 = (@jogada_da_partida[2] * 4) + (@jogada_da_partida[3] * 1)

  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def straight_flush
  puts " "
  puts "Parece que ambos tiveram uma Stright Flush: "
  cartas_do_poker
  naipes_do_poker
  contador = 1
  puts "Jogador 1 insia o naipe das suas cartas: "
  @jogada_da_partida << gets.chomp.gets.to_i
  5.times do  
    puts "Jogador 1 insira a carta nº#{contador}: "
    @jogada_da_partida << gets.chomp.gets.to_i
    contador += 1
  end

  puts "Jogador 2 insia o naipe das suas cartas: "
  @jogada_da_partida << gets.chomp.gets.to_i
  contador2 = 1
  5.times do  
    puts "Jogador 1 insira a carta nº#{contador2}: "
    @jogada_da_partida << gets.chomp.gets.to_i
    contador2 += 2
  end

  valor_jogador1 = (@jogada_da_partida[1] + @jogada_da_partida[2] + @jogada_da_partida[3] + @jogada_da_partida[4] + @jogada_da_partida[5])
  valor_jogador2 = (@jogada_da_partida[6] + @jogada_da_partida[7] + @jogada_da_partida[8] + @jogada_da_partida[9] + @jogada_da_partida[10])

  verifica_vencedor(valor_jogador1, valor_jogador2)
end

def royal_flush
  puts " "
  puts "Parece que ambos tiveram a sorte de conseguir um Royal Flush"
  naipes_do_poker
  puts "Agora a disputa será entre naipes"

  puts "Jogador 1 insira o naipe do seu Royal Flush: "
  @jogada_da_partida << gets.chomp.gets.to_i
  puts "Jogador 2 insira o naipe do seu Royal Flush: "
  @jogada_da_partida << gets.chomp.gets.to_i

  valor_jogador1 = @jogada_da_partida[0]
  valor_jogador2 = @jogada_da_partida[1]

  verifica_vencedor(valor_jogador1, valor_jogador2s)
end

def comeca
  apresentacao
  valores
  jogo
end

comeca