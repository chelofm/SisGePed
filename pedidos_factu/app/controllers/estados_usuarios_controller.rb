class EstadosUsuariosController < ApplicationController
  # GET /estados_usuarios
  # GET /estados_usuarios.xml
  def index
    @estados_usuarios = EstadosUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estados_usuarios }
    end
  end

  # GET /estados_usuarios/1
  # GET /estados_usuarios/1.xml
  def show
    @estados_usuario = EstadosUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estados_usuario }
    end
  end

  # GET /estados_usuarios/new
  # GET /estados_usuarios/new.xml
  def new
    @estados_usuario = EstadosUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estados_usuario }
    end
  end

  # GET /estados_usuarios/1/edit
  def edit
    @estados_usuario = EstadosUsuario.find(params[:id])
  end

  # POST /estados_usuarios
  # POST /estados_usuarios.xml
  def create
    @estados_usuario = EstadosUsuario.new(params[:estados_usuario])

    respond_to do |format|
      if @estados_usuario.save
        format.html { redirect_to(@estados_usuario, :notice => 'EstadosUsuario was successfully created.') }
        format.xml  { render :xml => @estados_usuario, :status => :created, :location => @estados_usuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estados_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estados_usuarios/1
  # PUT /estados_usuarios/1.xml
  def update
    @estados_usuario = EstadosUsuario.find(params[:id])

    respond_to do |format|
      if @estados_usuario.update_attributes(params[:estados_usuario])
        format.html { redirect_to(@estados_usuario, :notice => 'EstadosUsuario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estados_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_usuarios/1
  # DELETE /estados_usuarios/1.xml
  def destroy
    @estados_usuario = EstadosUsuario.find(params[:id])
    @estados_usuario.destroy

    respond_to do |format|
      format.html { redirect_to(estados_usuarios_url) }
      format.xml  { head :ok }
    end
  end
end
