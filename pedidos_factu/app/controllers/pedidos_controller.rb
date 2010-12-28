class PedidosController < ApplicationController
  layout "application"
  # GET /pedidos
  # GET /pedidos.xml
  def index
    @pedidos = Pedido.all(:order => "fecha ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pedidos }
    end
  end

  # GET /pedidos/1
  # GET /pedidos/1.xml
  def show
    @pedido = Pedido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pedido }
    end
  end

  # GET /pedidos/new
  # GET /pedidos/new.xml
  def new
    @pedido = Pedido.new
    @emisiones = Emision.find(:all)
    @estado_pedido = EstadoPedido.find_by_descripcionEstado("PENDIENTE")
    @gestion = Gestion.find_by_vigencia("TRUE")
    @proveedores = Proveedor.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pedido }
    end
  end

  # GET /pedidos/1/edit
  def edit
    @pedido = Pedido.find(params[:id])
  end

  # POST /pedidos
  # POST /pedidos.xml
  def create
    @pedido = Pedido.new(params[:pedido])

    respond_to do |format|
      if @pedido.save
        #obtiene una instancia del Itempedido
        @item = @pedido.itempedidos.new(params[:itempedido])
        #obtiene una instancia de autorizacion para guardar un registro
        #del estado del pedido en PENDIENTE
        @autorizacion = @pedido.autorizacions.new(params[:autorizacion])
        if @item.save && @autorizacion.save
          format.html { redirect_to(@pedido, :notice => 'PEDIDO FUE REGISTRADO EXITOSAMENTE') }
          format.xml  { render :xml => @pedido, :status => :created, :location => @pedido }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @pedido.errors, :status => :unprocessable_entity }
        end
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pedido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pedidos/1
  # PUT /pedidos/1.xml
  def update
    @pedido = Pedido.find(params[:id])

    respond_to do |format|
      if @pedido.update_attributes(params[:pedido])
        format.html { redirect_to(@pedido, :notice => 'Pedido was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pedido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.xml
  def destroy
    @pedido = Pedido.find(params[:id])
    @pedido.destroy

    respond_to do |format|
      format.html { redirect_to(pedidos_url) }
      format.xml  { head :ok }
    end
  end
end
