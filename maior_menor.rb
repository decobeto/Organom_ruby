def boas_vindas
  puts "Bem-vidno a um jogo de advinhação"
  puts "Qual é o seu nome?"
  nome = gets.chomp
  puts "\n\n\n\n\n"
  puts "Legal, vamos começar o jogo #{nome}"
end

def sorteia
  puts "Escolhendo um número entre 0 e 200..."
  puts "\n\n\n"
  numero_escolhido = rand(200)
  puts "Escolhido... Vamos-la tente adivinhar"
  puts "\n\n"
  numero_escolhido  
end

def pede_numero(chutes, a, tentativas)
  puts "Tentativa #{a} de #{tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Digite o número: "
  chute = gets.chomp

  puts  "\n\n"
  puts "Sera que vc acertou? O número que você chutou é #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero, chute)
  numero == chute

  acerto = chute == numero
  puts "\n"
  if acerto
    puts "Acertou!"
    return true
  end

    maior = numero > chute
    if maior 
      puts "Infelizmente você errou, mas tente novamente, talvez o número seja maior"
      puts "\n"
    else 
      puts "Infelizmente você errou, mas tente novamente, talvez o número seja menor"
      puts "\n"
    end
 false
end


boas_vindas
sorteia
pontos_ate_agora = 1000

  numero = sorteia
  tentativas = 5
  chutes = []
  total_de_chutes = 0

  for a in (1..tentativas)
    chute = pede_numero(chutes ,a ,tentativas)
    chutes << chute
    total_de_chutes += 1

    pontos_a_perder = (chute - numero).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou(numero ,chute)
      break
    end
  end

puts "Você ganhou até agora #{pontos_ate_agora} pontos"







