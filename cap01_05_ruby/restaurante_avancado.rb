class Restaurante
  attr_accessor :nota

  def initialize(nome)
    # puts "Criando um novo restaurante: #{nome}"
    # @nome = nome

    puts "Criando um novo restaurante #{nome}"
    @@total ||= 0
    @@total = @@total +1
    puts "Restaurantes criados: #{@@total}"
    @nome = nome
  end

  def qualifica(msg="Obrigado")
    puts "A nota do #{@nome} foi #{@nota}. #{msg}"
  end

  def self.relatorio
    puts "Foram criados #{@@total} restaurantes."
  end
end

restaurante_um = Restaurante.new("Fasano")
restaurante_um.nota = 10
restaurante_um.qualifica

restaurante_dois = Restaurante.new("Fogo de chao")
restaurante_dois.nota = 1
restaurante_dois.qualifica("Comida ruim!")

Restaurante.relatorio
