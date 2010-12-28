class Cuentabancaria < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :entidadfinanciera
  belongs_to :tipocuenta
end
