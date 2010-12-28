class Gestion < ActiveRecord::Base
  set_table_name "gestiones"
  has_many :pedidos
end
