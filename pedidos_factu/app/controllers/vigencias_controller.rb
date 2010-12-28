class VigenciasController < ApplicationController
  # GET /vigencias
  # GET /vigencias.xml
  def index
    @vigencias = Vigencia.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vigencias }
    end
  end

  # GET /vigencias/1
  # GET /vigencias/1.xml
  def show
    @vigencia = Vigencia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vigencia }
    end
  end

  # GET /vigencias/new
  # GET /vigencias/new.xml
  def new
    @vigencia = Vigencia.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vigencia }
    end
  end

  # GET /vigencias/1/edit
  def edit
    @vigencia = Vigencia.find(params[:id])
  end

  # POST /vigencias
  # POST /vigencias.xml
  def create
    @vigencia = Vigencia.new(params[:vigencia])

    respond_to do |format|
      if @vigencia.save
        format.html { redirect_to(@vigencia, :notice => 'Vigencia was successfully created.') }
        format.xml  { render :xml => @vigencia, :status => :created, :location => @vigencia }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vigencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vigencias/1
  # PUT /vigencias/1.xml
  def update
    @vigencia = Vigencia.find(params[:id])

    respond_to do |format|
      if @vigencia.update_attributes(params[:vigencia])
        format.html { redirect_to(@vigencia, :notice => 'Vigencia was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vigencia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vigencias/1
  # DELETE /vigencias/1.xml
  def destroy
    @vigencia = Vigencia.find(params[:id])
    @vigencia.destroy

    respond_to do |format|
      format.html { redirect_to(vigencias_url) }
      format.xml  { head :ok }
    end
  end
end
