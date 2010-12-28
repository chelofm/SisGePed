class EstadoAutorizacionsController < ApplicationController
  # GET /estado_autorizacions
  # GET /estado_autorizacions.xml
  def index
    @estado_autorizacions = EstadoAutorizacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estado_autorizacions }
    end
  end

  # GET /estado_autorizacions/1
  # GET /estado_autorizacions/1.xml
  def show
    @estado_autorizacion = EstadoAutorizacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estado_autorizacion }
    end
  end

  # GET /estado_autorizacions/new
  # GET /estado_autorizacions/new.xml
  def new
    @estado_autorizacion = EstadoAutorizacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estado_autorizacion }
    end
  end

  # GET /estado_autorizacions/1/edit
  def edit
    @estado_autorizacion = EstadoAutorizacion.find(params[:id])
  end

  # POST /estado_autorizacions
  # POST /estado_autorizacions.xml
  def create
    @estado_autorizacion = EstadoAutorizacion.new(params[:estado_autorizacion])

    respond_to do |format|
      if @estado_autorizacion.save
        format.html { redirect_to(@estado_autorizacion, :notice => 'EstadoAutorizacion was successfully created.') }
        format.xml  { render :xml => @estado_autorizacion, :status => :created, :location => @estado_autorizacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estado_autorizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estado_autorizacions/1
  # PUT /estado_autorizacions/1.xml
  def update
    @estado_autorizacion = EstadoAutorizacion.find(params[:id])

    respond_to do |format|
      if @estado_autorizacion.update_attributes(params[:estado_autorizacion])
        format.html { redirect_to(@estado_autorizacion, :notice => 'EstadoAutorizacion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estado_autorizacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_autorizacions/1
  # DELETE /estado_autorizacions/1.xml
  def destroy
    @estado_autorizacion = EstadoAutorizacion.find(params[:id])
    @estado_autorizacion.destroy

    respond_to do |format|
      format.html { redirect_to(estado_autorizacions_url) }
      format.xml  { head :ok }
    end
  end
end
