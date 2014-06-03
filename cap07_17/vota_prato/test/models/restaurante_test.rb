require 'test_helper'

class RestauranteTest < ActiveSupport::TestCase
  fixtures :restaurantes

  def test_restaurante

    restaurante = Restaurante.new(
      :nome => "Fasano 2",
      :endereco => "Rua Vergueiro 2",
      :especialidade => "vegetariano")

    assert restaurante.save, "restaurante não foi salvo. " + "errors: #{restaurante.errors.inspect}"

  end
end
