class TelefonosController < ApplicationController
  # GET /telefonos
  # GET /telefonos.xml
  def index
    @telefonos = Telefono.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @telefonos }
    end
  end

  # GET /telefonos/1
  # GET /telefonos/1.xml
  def show
    @telefono = Telefono.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @telefono }
    end
  end

  # GET /telefonos/new
  # GET /telefonos/new.xml
  def new
    @telefono = Telefono.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @telefono }
    end
  end

  # GET /telefonos/1/edit
  def edit
    @telefono = Telefono.find(params[:id])
  end

  # POST /telefonos
  # POST /telefonos.xml
  def create
    @telefono = Telefono.new(params[:telefono])

    respond_to do |format|
      if @telefono.save
        format.html { redirect_to(@telefono, :notice => 'Telefono was successfully created.') }
        format.xml  { render :xml => @telefono, :status => :created, :location => @telefono }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @telefono.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /telefonos/1
  # PUT /telefonos/1.xml
  def update
    @telefono = Telefono.find(params[:id])

    respond_to do |format|
      if @telefono.update_attributes(params[:telefono])
        format.html { redirect_to(@telefono, :notice => 'Telefono was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @telefono.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /telefonos/1
  # DELETE /telefonos/1.xml
  def destroy
    @telefono = Telefono.find(params[:id])
    @telefono.destroy

    respond_to do |format|
      format.html { redirect_to(telefonos_url) }
      format.xml  { head :ok }
    end
  end
end
