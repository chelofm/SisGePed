class Pedido < ActiveRecord::Base
  has_many :itempedidos, :class_name => "Itempedido"
  has_many :autorizacions
  has_many :estado_pedidos, :through => :autorizacions

  belongs_to :emision
  belongs_to :gestion
  belongs_to :proveedor
  belongs_to :usuario
  belongs_to:unidad_beneficiaria

  validates_associated :itempedidos,
                       :message => "validando items"

  def self.get_pedidos_con_un_estado(estadoPedido)
    id_estado = EstadoPedido.find_by_descripcionEstado(estadoPedido).id
    Pedido.find_by_sql(["SELECT * FROM Pedidos p inner join autorizaciones e on p.id = e.pedido_id where e.estado_pedido_id = ?",id_estado])
  end

  # metodo que permite obtener los pedidos cuyo estado sea
  # PENDIENTE o RECHAZADO
  def self.get_pedidos_sin_autorizacion()
    id_pendiente = EstadoPedido.find_by_descripcionEstado("PENDIENTE").id
    id_rechazado = EstadoPedido.find_by_descripcionEstado("RECHAZADO").id
    Pedido.find_by_sql(["SELECT p.id as idPedido, p.fecha as fechaPedido, p.obs as obsPedido, p.proveedor_id, a.fecha as fechaAut, a.obs as obsAut, a.id as idaut,e.* FROM Pedidos p inner join autorizaciones a on p.id = a.pedido_id inner join estado_pedidos e on a.estado_pedido_id = e.id WHERE ( a.estado_pedido_id = ? or a.estado_pedido_id = ? ) and a.estadoaut = TRUE  ORDER BY p.fecha",id_pendiente, id_rechazado])
  end

end