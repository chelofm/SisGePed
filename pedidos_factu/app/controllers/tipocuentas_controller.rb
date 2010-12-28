class TipocuentasController < ApplicationController
  # GET /tipocuentas
  # GET /tipocuentas.xml
  def index
    @tipocuentas = Tipocuenta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipocuentas }
    end
  end

  # GET /tipocuentas/1
  # GET /tipocuentas/1.xml
  def show
    @tipocuenta = Tipocuenta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipocuenta }
    end
  end

  # GET /tipocuentas/new
  # GET /tipocuentas/new.xml
  def new
    @tipocuenta = Tipocuenta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipocuenta }
    end
  end

  # GET /tipocuentas/1/edit
  def edit
    @tipocuenta = Tipocuenta.find(params[:id])
  end

  # POST /tipocuentas
  # POST /tipocuentas.xml
  def create
    @tipocuenta = Tipocuenta.new(params[:tipocuenta])

    respond_to do |format|
      if @tipocuenta.save
        format.html { redirect_to(@tipocuenta, :notice => 'Tipocuenta was successfully created.') }
        format.xml  { render :xml => @tipocuenta, :status => :created, :location => @tipocuenta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipocuenta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipocuentas/1
  # PUT /tipocuentas/1.xml
  def update
    @tipocuenta = Tipocuenta.find(params[:id])

    respond_to do |format|
      if @tipocuenta.update_attributes(params[:tipocuenta])
        format.html { redirect_to(@tipocuenta, :notice => 'Tipocuenta was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipocuenta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocuentas/1
  # DELETE /tipocuentas/1.xml
  def destroy
    @tipocuenta = Tipocuenta.find(params[:id])
    @tipocuenta.destroy

    respond_to do |format|
      format.html { redirect_to(tipocuentas_url) }
      format.xml  { head :ok }
    end
  end
end
