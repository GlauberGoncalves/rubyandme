def dar_boas_vindas
  puts "***************"
  puts "Bem vindo ao Jogo da forca!"
  puts "E ai? Tá preparado? :)"
  puts "***************\n\n"
end

def conhecer_jogador
  puts "Qual o seu nome, jogador?"
  nome = gets.strip
end

def sortear_palavra
  palavras = ["programador", "belinha", "jessica"]
  quantidade_de_palavras = palavras.size  
  sorteada = palavras[rand(quantidade_de_palavras)]
end

def diz_quantidade_de_letras jogador, quantidade_de_letras
  puts "\n\n\nBeleza #{jogador}, vamos começar!\n"
  puts "A palavra sorteada tem #{quantidade_de_letras}\n\n"
end

def pede_letra_ao_jogador
  puts "Digite uma letra > "
  letra = gets.strip
end

def jogar jogador
  palavra = sortear_palavra
  quantidade_de_letras = palavra.size
  tracos = ""
  chutes = []
  letras_corretas = 0

  diz_quantidade_de_letras jogador, quantidade_de_letras

  while true

    for traco in 0..quantidade_de_letras-1
      if chutes.include?(palavra[traco])
        tracos += palavra[traco]
        letras_corretas += 1
      else
        tracos += "_ "
      end
    end  

    puts tracos

    if quantidade_de_letras == letras_corretas
      puts "Você venceu o jogo #{jogador}, parabéns!!! \n"
      break
    end

    letras_corretas = 0
    tracos = ""

    chutes << pede_letra_ao_jogador

  end

  puts "Deseja jogar novamente? (S/N)"
  resposta = gets.strip.upcase
  resposta == 'S'
end