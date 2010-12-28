class SolicitantesController < ApplicationController
  # GET /solicitantes
  # GET /solicitantes.xml
  def index
    @solicitantes = Solicitante.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @solicitantes }
    end
  end

  # GET /solicitantes/1
  # GET /solicitantes/1.xml
  def show
    @solicitante = Solicitante.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @solicitante }
    end
  end

  # GET /solicitantes/new
  # GET /solicitantes/new.xml
  def new
    @solicitante = Solicitante.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solicitante }
    end
  end

  # GET /solicitantes/1/edit
  def edit
    @solicitante = Solicitante.find(params[:id])
  end

  # POST /solicitantes
  # POST /solicitantes.xml
  def create
    @solicitante = Solicitante.new(params[:solicitante])

    respond_to do |format|
      if @solicitante.save
        format.html { redirect_to(@solicitante, :notice => 'Solicitante was successfully created.') }
        format.xml  { render :xml => @solicitante, :status => :created, :location => @solicitante }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @solicitante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /solicitantes/1
  # PUT /solicitantes/1.xml
  def update
    @solicitante = Solicitante.find(params[:id])

    respond_to do |format|
      if @solicitante.update_attributes(params[:solicitante])
        format.html { redirect_to(@solicitante, :notice => 'Solicitante was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @solicitante.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitantes/1
  # DELETE /solicitantes/1.xml
  def destroy
    @solicitante = Solicitante.find(params[:id])
    @solicitante.destroy

    respond_to do |format|
      format.html { redirect_to(solicitantes_url) }
      format.xml  { head :ok }
    end
  end
end
