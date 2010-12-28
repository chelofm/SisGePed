class Unidad < ActiveRecord::Base
  set_table_name "unidades"
  has_one:itempedido
end
