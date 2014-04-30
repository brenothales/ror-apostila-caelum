print "Digite um número:"
numero = gets.to_i

begin
  resultado = 100 / numero
rescue
  puts "Numero digitado invalido"
  exit
end

puts "100/#{numero} é #{resultado}"


class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
  raise IdadeInsuficienteException,
  "Você precisa ser maior de idade para jogar jogos violentos." unless  idade > 18
end

begin
  verifica_idade(17)
rescue IdadeInsuficienteException => e
  puts "Foi lançada a exception: #{e}"
end
