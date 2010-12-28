class EmisionsController < ApplicationController
  # GET /emisions
  # GET /emisions.xml
  def index
    @emisions = Emision.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @emisions }
    end
  end

  # GET /emisions/1
  # GET /emisions/1.xml
  def show
    @emision = Emision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @emision }
    end
  end

  # GET /emisions/new
  # GET /emisions/new.xml
  def new
    @emision = Emision.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @emision }
    end
  end

  # GET /emisions/1/edit
  def edit
    @emision = Emision.find(params[:id])
  end

  # POST /emisions
  # POST /emisions.xml
  def create
    @emision = Emision.new(params[:emision])

    respond_to do |format|
      if @emision.save
        format.html { redirect_to(@emision, :notice => 'Emision was successfully created.') }
        format.xml  { render :xml => @emision, :status => :created, :location => @emision }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @emision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /emisions/1
  # PUT /emisions/1.xml
  def update
    @emision = Emision.find(params[:id])

    respond_to do |format|
      if @emision.update_attributes(params[:emision])
        format.html { redirect_to(@emision, :notice => 'Emision was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @emision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /emisions/1
  # DELETE /emisions/1.xml
  def destroy
    @emision = Emision.find(params[:id])
    @emision.destroy

    respond_to do |format|
      format.html { redirect_to(emisions_url) }
      format.xml  { head :ok }
    end
  end
end
