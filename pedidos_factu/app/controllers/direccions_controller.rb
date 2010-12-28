class DireccionsController < ApplicationController
  # GET /direccions
  # GET /direccions.xml
  def index
    @direccions = Direccion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @direccions }
    end
  end

  # GET /direccions/1
  # GET /direccions/1.xml
  def show
    @direccion = Direccion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @direccion }
    end
  end

  # GET /direccions/new
  # GET /direccions/new.xml
  def new
    @direccion = Direccion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @direccion }
    end
  end

  # GET /direccions/1/edit
  def edit
    @direccion = Direccion.find(params[:id])
  end

  # POST /direccions
  # POST /direccions.xml
  def create
    @direccion = Direccion.new(params[:direccion])

    respond_to do |format|
      if @direccion.save
        format.html { redirect_to(@direccion, :notice => 'Direccion was successfully created.') }
        format.xml  { render :xml => @direccion, :status => :created, :location => @direccion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @direccion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /direccions/1
  # PUT /direccions/1.xml
  def update
    @direccion = Direccion.find(params[:id])

    respond_to do |format|
      if @direccion.update_attributes(params[:direccion])
        format.html { redirect_to(@direccion, :notice => 'Direccion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @direccion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /direccions/1
  # DELETE /direccions/1.xml
  def destroy
    @direccion = Direccion.find(params[:id])
    @direccion.destroy

    respond_to do |format|
      format.html { redirect_to(direccions_url) }
      format.xml  { head :ok }
    end
  end
end
