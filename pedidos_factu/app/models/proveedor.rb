class Proveedor < ActiveRecord::Base
  set_table_name "proveedores"
  
  has_one :direccion
  has_many :pedidos
  has_many :cuentabancarias,
           :class_name => "Cuentabancaria"
  has_many :usuarios
end
