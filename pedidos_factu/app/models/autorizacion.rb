class Autorizacion < ActiveRecord::Base
  set_table_name "autorizaciones"

  belongs_to :pedido
  belongs_to :estado_pedido
  belongs_to :usuario

  #metodo que permite cambiar el estado de las autorizaciones para un
  #determinado pedido, cambia el estado a TRUE o FALSE
  def self.cambia_estado_autorizaciones(idPedido)
    @autorizaciones = Autorizacion.find_all_by_pedido_id idPedido
    @autorizaciones.each do |autorizacion|
      autorizacion.update_attribute(:estadoaut, FALSE)
    end
  end
end
