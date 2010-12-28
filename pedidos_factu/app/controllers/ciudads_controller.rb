class CiudadsController < ApplicationController
  # GET /ciudads
  # GET /ciudads.xml
  def index
    @ciudads = Ciudad.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ciudads }
    end
  end

  # GET /ciudads/1
  # GET /ciudads/1.xml
  def show
    @ciudad = Ciudad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ciudad }
    end
  end

  # GET /ciudads/new
  # GET /ciudads/new.xml
  def new
    @ciudad = Ciudad.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ciudad }
    end
  end

  # GET /ciudads/1/edit
  def edit
    @ciudad = Ciudad.find(params[:id])
  end

  # POST /ciudads
  # POST /ciudads.xml
  def create
    @ciudad = Ciudad.new(params[:ciudad])

    respond_to do |format|
      if @ciudad.save
        format.html { redirect_to(@ciudad, :notice => 'Ciudad was successfully created.') }
        format.xml  { render :xml => @ciudad, :status => :created, :location => @ciudad }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ciudad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ciudads/1
  # PUT /ciudads/1.xml
  def update
    @ciudad = Ciudad.find(params[:id])

    respond_to do |format|
      if @ciudad.update_attributes(params[:ciudad])
        format.html { redirect_to(@ciudad, :notice => 'Ciudad was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ciudad.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudads/1
  # DELETE /ciudads/1.xml
  def destroy
    @ciudad = Ciudad.find(params[:id])
    @ciudad.destroy

    respond_to do |format|
      format.html { redirect_to(ciudads_url) }
      format.xml  { head :ok }
    end
  end
end
