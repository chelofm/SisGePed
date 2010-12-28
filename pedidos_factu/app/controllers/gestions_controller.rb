class GestionsController < ApplicationController
  # GET /gestions
  # GET /gestions.xml
  def index
    @gestions = Gestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gestions }
    end
  end

  # GET /gestions/1
  # GET /gestions/1.xml
  def show
    @gestion = Gestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gestion }
    end
  end

  # GET /gestions/new
  # GET /gestions/new.xml
  def new
    @gestion = Gestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gestion }
    end
  end

  # GET /gestions/1/edit
  def edit
    @gestion = Gestion.find(params[:id])
  end

  # POST /gestions
  # POST /gestions.xml
  def create
    @gestion = Gestion.new(params[:gestion])

    respond_to do |format|
      if @gestion.save
        format.html { redirect_to(@gestion, :notice => 'Gestion was successfully created.') }
        format.xml  { render :xml => @gestion, :status => :created, :location => @gestion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gestions/1
  # PUT /gestions/1.xml
  def update
    @gestion = Gestion.find(params[:id])

    respond_to do |format|
      if @gestion.update_attributes(params[:gestion])
        format.html { redirect_to(@gestion, :notice => 'Gestion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gestions/1
  # DELETE /gestions/1.xml
  def destroy
    @gestion = Gestion.find(params[:id])
    @gestion.destroy

    respond_to do |format|
      format.html { redirect_to(gestions_url) }
      format.xml  { head :ok }
    end
  end
end
