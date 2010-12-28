class EntidadfinancierasController < ApplicationController
  # GET /entidadfinancieras
  # GET /entidadfinancieras.xml
  def index
    @entidadfinancieras = Entidadfinanciera.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entidadfinancieras }
    end
  end

  # GET /entidadfinancieras/1
  # GET /entidadfinancieras/1.xml
  def show
    @entidadfinanciera = Entidadfinanciera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @entidadfinanciera }
    end
  end

  # GET /entidadfinancieras/new
  # GET /entidadfinancieras/new.xml
  def new
    @entidadfinanciera = Entidadfinanciera.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @entidadfinanciera }
    end
  end

  # GET /entidadfinancieras/1/edit
  def edit
    @entidadfinanciera = Entidadfinanciera.find(params[:id])
  end

  # POST /entidadfinancieras
  # POST /entidadfinancieras.xml
  def create
    @entidadfinanciera = Entidadfinanciera.new(params[:entidadfinanciera])

    respond_to do |format|
      if @entidadfinanciera.save
        format.html { redirect_to(@entidadfinanciera, :notice => 'Entidadfinanciera was successfully created.') }
        format.xml  { render :xml => @entidadfinanciera, :status => :created, :location => @entidadfinanciera }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @entidadfinanciera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /entidadfinancieras/1
  # PUT /entidadfinancieras/1.xml
  def update
    @entidadfinanciera = Entidadfinanciera.find(params[:id])

    respond_to do |format|
      if @entidadfinanciera.update_attributes(params[:entidadfinanciera])
        format.html { redirect_to(@entidadfinanciera, :notice => 'Entidadfinanciera was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @entidadfinanciera.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /entidadfinancieras/1
  # DELETE /entidadfinancieras/1.xml
  def destroy
    @entidadfinanciera = Entidadfinanciera.find(params[:id])
    @entidadfinanciera.destroy

    respond_to do |format|
      format.html { redirect_to(entidadfinancieras_url) }
      format.xml  { head :ok }
    end
  end
end
