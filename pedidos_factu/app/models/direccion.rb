class Direccion < ActiveRecord::Base
  set_table_name "direcciones"

  has_one :proveedor
  has_one :unidad_beneficiaria
  belongs_to :ciudad,
            :class_name => "Ciudad" ,
            :foreign_key => "ciudad_id"
end
