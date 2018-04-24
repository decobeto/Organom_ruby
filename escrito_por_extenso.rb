class Extenso

  NUMEROS_EXTENSOS = {
    "1" => "um",
    "2" => "dois",
    "3" => "tres",
    "4" => "quatro"
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
