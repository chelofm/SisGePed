class EstadoAutorizacion < ActiveRecord::Base
  set_table_name "estado_autorizaciones"
  has_one:autorizacion
end
