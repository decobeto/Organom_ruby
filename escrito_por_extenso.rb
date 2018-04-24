class Extenso

  NUMEROS_EXTENSOS = {
    "1" => "um",
    "2" => "dois",
    "3" => "três",
    "4" => "quatro",
    "5" => "cinco",
    "6" => "seis",
    "7" => "sete",
    "8" => "oito",
    "9" => "nove",
    "0" => "zero" 
  }

  def self.pergunta
    puts  "Insira os números: "
    numeros = gets.chomp.to_s
    p self.separa_numeros(numeros)
  end

  def self.separa_numeros(numeros) 
    array = [numeros.split("").map do |separador| 
          NUMEROS_EXTENSOS[separador] 
        end].join(" ")
    return array
  end
end

Extenso.pergunta
