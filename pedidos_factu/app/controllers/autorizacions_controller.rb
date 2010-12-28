class AutorizacionsController < ApplicationController
  layout 'application'
  # GET /autorizacions
  # GET /autorizacions.xml
  def index
    @autorizacions = Pedido.get_pedidos_sin_autorizacion()

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @autorizacions }
    end
  end

  # GET /autorizacions/1
  # GET /autorizacions/1.xml
  def show
    @pedido = Pedido.find(params[:idPedido])
    @autorizacion = Autorizacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @autorizacion }
    end
  end

  # GET /autorizacions/new
  # GET /autorizacions/new.xml
  def new
    @autorizacion = Autorizacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @autorizacion }
    end
  end

  # GET /autorizacions/1/edit
  def edit
    @autorizacion = Autorizacion.find(params[:id])
  end

  # POST /autorizacions
  # POST /autorizacions.xml
  def create
    @autorizacion = Autorizacion.new(params[:autorizacion])

    respond_to do |format|
      if @autorizacion.save
        format.html { redirect_to(@autorizacion, :notice => 'Autorizacion was successfully created.') }
        format.xml  { render :xml => @autorizacion, :status => :created, :location => @autorizacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @autorizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # metodo que permite registrar un cambio de estado de un pedido en la tabla
  # AUTORIZACIONES
  def define_estado_pedido
    #obtenemos el objeto pedido del que se quiere cambiar su estado
    @pedido = Pedido.find(params[:id])
    # obtenemos el id del estado al que se cambiara
    # consultamos si el parametro pasado es A entonces el estado del pedido
    # es ACEPTADO caso contrario RECHAZADO
    @id_estado = params[:estado] == "A"? EstadoPedido.find_by_descripcionEstado("ACEPTADO").id : EstadoPedido.find_by_descripcionEstado("RECHAZADO").id
    # coloca a FALSE el campo :estadoaut todas los registros correspondientes
    # al pedido
    Autorizacion.cambia_estado_autorizaciones(@pedido.id)
    @autorizacion = @pedido.autorizacions.new(:fecha => Time.now.strftime("%Y-%m-%d"),
                                              :estado_pedido_id => @id_estado,
                                              :usuario_id => 2,
                                              :estadoaut => TRUE)
    if @autorizacion.save
      # consulta el tipo de cambio de estado para mostrar un mensj. personalizado
      flash[:notice] = params[:estado] == "A" ? "PEDIDO AUTORIZADO SATISFACTORIAMENTE" : "CAMBIO DE ESTADO DE PEDIDO REGISTRADO SATISFACTORIAMENTE"
    else
      flash[:notice] = "NO SE PUDO AUTORIZAR EL PEDIDO, INTENTE NUEVAMENTE POR FAVOR"
    end
    redirect_to :controller => "autorizacions"
  end

  # PUT /autorizacions/1
  # PUT /autorizacions/1.xml
  def update
    @autorizacion = Autorizacion.find(params[:id])

    respond_to do |format|
      if @autorizacion.update_attributes(params[:autorizacion])
        format.html { redirect_to(@autorizacion, :notice => 'Autorizacion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @autorizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /autorizacions/1
  # DELETE /autorizacions/1.xml
  def destroy
    @autorizacion = Autorizacion.find(params[:id])
    @autorizacion.destroy

    respond_to do |format|
      format.html { redirect_to(autorizacions_url) }
      format.xml  { head :ok }
    end
  end
end
