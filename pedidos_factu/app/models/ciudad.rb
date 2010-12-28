class Ciudad < ActiveRecord::Base
  set_table_name "ciudades"
  has_many :direccions,
           :class_name => "Direccion"
end
