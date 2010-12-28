class Emision < ActiveRecord::Base
  set_table_name "emisiones"
  has_many :pedido
end
