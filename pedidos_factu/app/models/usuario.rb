class Usuario < ActiveRecord::Base
  has_many_and_belongs_to :roles
  belongs_to :proveedores,
             :class_name => "Proveedor"
  belongs_to :estados_usuarios,
             :class_name => "EstadosUsuario"
  belongs_to:telefono
  belongs_to:unidad_beneficiaria
  
  has_many :autorizacions,
           :class_name => "Autorizacion"
end
