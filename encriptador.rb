class Encriptador
  def self.cifra 
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g', 'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end

  def self.encripta_letra(letra)
    letra_minuscula = letra.downcase
    self.cifra[letra_minuscula]
  end

  def self.encripta_decripta(palavra)
    letra = palavra.split("")

    resultados = []
    letra.each do |letra|
      letras_encriptadas = encripta_letra(letra)
      resultados.push(letras_encriptadas)
    end
    puts "Palavra: " + resultados.join
  end

  def self.pergunta
    puts "Insira uma palavra: "
    palavra = gets.chomp.to_s
    self.encripta_decripta(palavra)
  end
end

Encriptador.pergunta


