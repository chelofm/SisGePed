class Itempedido < ActiveRecord::Base
  belongs_to :pedido

  validates_numericality_of :cantidad, :only_integer => true,
                            :message => "->Debe especificar una cantidad válida"
  validates_numericality_of :precioUnidad, :greater_than => 0.0,
                            :message => "->Debe especificar precio unitario válido"
end
