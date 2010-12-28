class ItempedidosController < ApplicationController
  # GET /itempedidos
  # GET /itempedidos.xml
  def index
    @itempedidos = Itempedido.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @itempedidos }
    end
  end

  # GET /itempedidos/1
  # GET /itempedidos/1.xml
  def show
    @itempedido = Itempedido.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @itempedido }
    end
  end

  # GET /itempedidos/new
  # GET /itempedidos/new.xml
  def new
    @itempedido = Itempedido.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @itempedido }
    end
  end

  # GET /itempedidos/1/edit
  def edit
    @itempedido = Itempedido.find(params[:id])
  end

  # POST /itempedidos
  # POST /itempedidos.xml
  def create
    @itempedido = Itempedido.new(params[:itempedido])

    respond_to do |format|
      if @itempedido.save
        format.html { redirect_to(@itempedido, :notice => 'Itempedido was successfully created.') }
        format.xml  { render :xml => @itempedido, :status => :created, :location => @itempedido }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @itempedido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /itempedidos/1
  # PUT /itempedidos/1.xml
  def update
    @itempedido = Itempedido.find(params[:id])

    respond_to do |format|
      if @itempedido.update_attributes(params[:itempedido])
        format.html { redirect_to(@itempedido, :notice => 'Itempedido was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @itempedido.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /itempedidos/1
  # DELETE /itempedidos/1.xml
  def destroy
    @itempedido = Itempedido.find(params[:id])
    @itempedido.destroy

    respond_to do |format|
      format.html { redirect_to(itempedidos_url) }
      format.xml  { head :ok }
    end
  end
end
