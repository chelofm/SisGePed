class Telefono < ActiveRecord::Base
  has_one :usuario
  has_one :unidad_beneficiaria
end
