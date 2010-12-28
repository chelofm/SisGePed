class Autorizador < ActiveRecord::Base
  set_table_name "autorizadores"
  has_many:usuario
end
