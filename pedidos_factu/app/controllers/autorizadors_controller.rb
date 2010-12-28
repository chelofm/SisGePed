class AutorizadorsController < ApplicationController
  # GET /autorizadors
  # GET /autorizadors.xml
  def index
    @autorizadors = Autorizador.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @autorizadors }
    end
  end

  # GET /autorizadors/1
  # GET /autorizadors/1.xml
  def show
    @autorizador = Autorizador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @autorizador }
    end
  end

  # GET /autorizadors/new
  # GET /autorizadors/new.xml
  def new
    @autorizador = Autorizador.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @autorizador }
    end
  end

  # GET /autorizadors/1/edit
  def edit
    @autorizador = Autorizador.find(params[:id])
  end

  # POST /autorizadors
  # POST /autorizadors.xml
  def create
    @autorizador = Autorizador.new(params[:autorizador])

    respond_to do |format|
      if @autorizador.save
        format.html { redirect_to(@autorizador, :notice => 'Autorizador was successfully created.') }
        format.xml  { render :xml => @autorizador, :status => :created, :location => @autorizador }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @autorizador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /autorizadors/1
  # PUT /autorizadors/1.xml
  def update
    @autorizador = Autorizador.find(params[:id])

    respond_to do |format|
      if @autorizador.update_attributes(params[:autorizador])
        format.html { redirect_to(@autorizador, :notice => 'Autorizador was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @autorizador.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /autorizadors/1
  # DELETE /autorizadors/1.xml
  def destroy
    @autorizador = Autorizador.find(params[:id])
    @autorizador.destroy

    respond_to do |format|
      format.html { redirect_to(autorizadors_url) }
      format.xml  { head :ok }
    end
  end
end
