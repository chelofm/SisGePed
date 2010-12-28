class UnidadBeneficiariasController < ApplicationController
  # GET /unidad_beneficiarias
  # GET /unidad_beneficiarias.xml
  def index
    @unidad_beneficiarias = UnidadBeneficiaria.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unidad_beneficiarias }
    end
  end

  # GET /unidad_beneficiarias/1
  # GET /unidad_beneficiarias/1.xml
  def show
    @unidad_beneficiaria = UnidadBeneficiaria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unidad_beneficiaria }
    end
  end

  # GET /unidad_beneficiarias/new
  # GET /unidad_beneficiarias/new.xml
  def new
    @unidad_beneficiaria = UnidadBeneficiaria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unidad_beneficiaria }
    end
  end

  # GET /unidad_beneficiarias/1/edit
  def edit
    @unidad_beneficiaria = UnidadBeneficiaria.find(params[:id])
  end

  # POST /unidad_beneficiarias
  # POST /unidad_beneficiarias.xml
  def create
    @unidad_beneficiaria = UnidadBeneficiaria.new(params[:unidad_beneficiaria])

    respond_to do |format|
      if @unidad_beneficiaria.save
        format.html { redirect_to(@unidad_beneficiaria, :notice => 'UnidadBeneficiaria was successfully created.') }
        format.xml  { render :xml => @unidad_beneficiaria, :status => :created, :location => @unidad_beneficiaria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unidad_beneficiaria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unidad_beneficiarias/1
  # PUT /unidad_beneficiarias/1.xml
  def update
    @unidad_beneficiaria = UnidadBeneficiaria.find(params[:id])

    respond_to do |format|
      if @unidad_beneficiaria.update_attributes(params[:unidad_beneficiaria])
        format.html { redirect_to(@unidad_beneficiaria, :notice => 'UnidadBeneficiaria was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unidad_beneficiaria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unidad_beneficiarias/1
  # DELETE /unidad_beneficiarias/1.xml
  def destroy
    @unidad_beneficiaria = UnidadBeneficiaria.find(params[:id])
    @unidad_beneficiaria.destroy

    respond_to do |format|
      format.html { redirect_to(unidad_beneficiarias_url) }
      format.xml  { head :ok }
    end
  end
end
