class UnidadBeneficiaria < ActiveRecord::Base
  has_many  :pedidos
  has_many  :usuarios
  belongs_to  :direccion
  belongs_to  :telefono
end
