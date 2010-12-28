class CuentabancariasController < ApplicationController
  # GET /cuentabancarias
  # GET /cuentabancarias.xml
  def index
    @cuentabancarias = Cuentabancaria.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cuentabancarias }
    end
  end

  # GET /cuentabancarias/1
  # GET /cuentabancarias/1.xml
  def show
    @cuentabancaria = Cuentabancaria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cuentabancaria }
    end
  end

  # GET /cuentabancarias/new
  # GET /cuentabancarias/new.xml
  def new
    @cuentabancaria = Cuentabancaria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cuentabancaria }
    end
  end

  # GET /cuentabancarias/1/edit
  def edit
    @cuentabancaria = Cuentabancaria.find(params[:id])
  end

  # POST /cuentabancarias
  # POST /cuentabancarias.xml
  def create
    @cuentabancaria = Cuentabancaria.new(params[:cuentabancaria])

    respond_to do |format|
      if @cuentabancaria.save
        format.html { redirect_to(@cuentabancaria, :notice => 'Cuentabancaria was successfully created.') }
        format.xml  { render :xml => @cuentabancaria, :status => :created, :location => @cuentabancaria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cuentabancaria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cuentabancarias/1
  # PUT /cuentabancarias/1.xml
  def update
    @cuentabancaria = Cuentabancaria.find(params[:id])

    respond_to do |format|
      if @cuentabancaria.update_attributes(params[:cuentabancaria])
        format.html { redirect_to(@cuentabancaria, :notice => 'Cuentabancaria was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cuentabancaria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cuentabancarias/1
  # DELETE /cuentabancarias/1.xml
  def destroy
    @cuentabancaria = Cuentabancaria.find(params[:id])
    @cuentabancaria.destroy

    respond_to do |format|
      format.html { redirect_to(cuentabancarias_url) }
      format.xml  { head :ok }
    end
  end
end
