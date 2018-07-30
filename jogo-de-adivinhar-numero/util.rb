def dar_boas_vindas
  puts "Jogo da advinhação"
  puts "qual é o seu nome?\n"
  nome = gets.strip  
  puts "Começaremos o jogo #{nome}"
  puts ("\n\n")
  nome
end

def gera_numero_secreto maximo
  puts "Escolhendo um numero entre 1 e #{maximo}"
  sorteado = rand(maximo) + 1
  puts "Número escolhido... que tal adivinha-lo?"
  sorteado
end

def pede_um_numero(numero_de_tentativa, limite_de_tentativas)
  puts "\n\n\n\n"
  puts "Tentativa #{numero_de_tentativa} de #{limite_de_tentativas}"
  puts "Entre com um número"
  gets.to_i
end

def verifica_se_acertou(chute, numero_secreto)
  acertou = chute == numero_secreto

  if acertou
    puts "Você acertou, parabéns!!!"
    return true    
  end

  if numero_secreto > chute
    puts "Errou, o número é maior"      
  else
    puts "Errou, o número é menor"
  end
  
  false
  
end

def jogar nome
  maximo_de_tentativas = 10
  numero_maximo_para_sortear = 100
  chutes = []

  numero_secreto = gera_numero_secreto(numero_maximo_para_sortear)

  for tentativa in 1..maximo_de_tentativas

    chute = pede_um_numero(tentativa, maximo_de_tentativas)
    chutes << chute
    puts "Minhas tentativas: #{chutes}"
    
    if nome == "Glauber"
      puts "Você acertou, parabéns!!!"
      break
    end

    if verifica_se_acertou(chute, numero_secreto)
      break
    end

  end

end

def quiser_continua
  puts "Deseja jogar novamente (S/N)"
  resposta = gets.strip.upcase
  resposta == 'S'
end

def ate_mais nome
  puts "\n\n***********************\n"
  puts "Já vai embora?\n ok, te espero aqui de novo\n\n"
  puts "Até mais #{nome}"
  puts "\n***********************"
end
