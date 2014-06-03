require  'singleton'

class Relatorio
  include Singleton
end

relatorio1 = Relatorio.instance
relatorio2 = Relatorio.instance

puts relatorio1 == relatorio2
