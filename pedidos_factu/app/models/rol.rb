class Rol < ActiveRecord::Base
  set_table_name "roles"
  has_one:usuario
end
