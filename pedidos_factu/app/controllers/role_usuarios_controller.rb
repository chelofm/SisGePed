class RoleUsuariosController < ApplicationController
  # GET /role_usuarios
  # GET /role_usuarios.xml
  def index
    @role_usuarios = RoleUsuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @role_usuarios }
    end
  end

  # GET /role_usuarios/1
  # GET /role_usuarios/1.xml
  def show
    @role_usuario = RoleUsuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @role_usuario }
    end
  end

  # GET /role_usuarios/new
  # GET /role_usuarios/new.xml
  def new
    @role_usuario = RoleUsuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @role_usuario }
    end
  end

  # GET /role_usuarios/1/edit
  def edit
    @role_usuario = RoleUsuario.find(params[:id])
  end

  # POST /role_usuarios
  # POST /role_usuarios.xml
  def create
    @role_usuario = RoleUsuario.new(params[:role_usuario])

    respond_to do |format|
      if @role_usuario.save
        format.html { redirect_to(@role_usuario, :notice => 'RoleUsuario was successfully created.') }
        format.xml  { render :xml => @role_usuario, :status => :created, :location => @role_usuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @role_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /role_usuarios/1
  # PUT /role_usuarios/1.xml
  def update
    @role_usuario = RoleUsuario.find(params[:id])

    respond_to do |format|
      if @role_usuario.update_attributes(params[:role_usuario])
        format.html { redirect_to(@role_usuario, :notice => 'RoleUsuario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @role_usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /role_usuarios/1
  # DELETE /role_usuarios/1.xml
  def destroy
    @role_usuario = RoleUsuario.find(params[:id])
    @role_usuario.destroy

    respond_to do |format|
      format.html { redirect_to(role_usuarios_url) }
      format.xml  { head :ok }
    end
  end
end
