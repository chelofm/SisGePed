class RoleusuariosController < ApplicationController
  # GET /roleusuarios
  # GET /roleusuarios.xml
  def index
    @roleusuarios = Roleusuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roleusuarios }
    end
  end

  # GET /roleusuarios/1
  # GET /roleusuarios/1.xml
  def show
    @roleusuario = Roleusuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @roleusuario }
    end
  end

  # GET /roleusuarios/new
  # GET /roleusuarios/new.xml
  def new
    @roleusuario = Roleusuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @roleusuario }
    end
  end

  # GET /roleusuarios/1/edit
  def edit
    @roleusuario = Roleusuario.find(params[:id])
  end

  # POST /roleusuarios
  # POST /roleusuarios.xml
  def create
    @roleusuario = Roleusuario.new(params[:roleusuario])

    respond_to do |format|
      if @roleusuario.save
        format.html { redirect_to(@roleusuario, :notice => 'Roleusuario was successfully created.') }
        format.xml  { render :xml => @roleusuario, :status => :created, :location => @roleusuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @roleusuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roleusuarios/1
  # PUT /roleusuarios/1.xml
  def update
    @roleusuario = Roleusuario.find(params[:id])

    respond_to do |format|
      if @roleusuario.update_attributes(params[:roleusuario])
        format.html { redirect_to(@roleusuario, :notice => 'Roleusuario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @roleusuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roleusuarios/1
  # DELETE /roleusuarios/1.xml
  def destroy
    @roleusuario = Roleusuario.find(params[:id])
    @roleusuario.destroy

    respond_to do |format|
      format.html { redirect_to(roleusuarios_url) }
      format.xml  { head :ok }
    end
  end
end
