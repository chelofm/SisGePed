class EstadoPedido < ActiveRecord::Base
  has_many :autorizacions
  has_many :pedidos, :through => :autorizacions
end
