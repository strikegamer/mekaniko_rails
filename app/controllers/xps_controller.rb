class XpsController < ApplicationController
  # GET /xps
  # GET /xps.xml
  def index
    @xps = Xp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @xps }
    end
  end

  # GET /xps/1
  # GET /xps/1.xml
  def show
    @xp = Xp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @xp }
    end
  end

  # GET /xps/new
  # GET /xps/new.xml
  def new
    @xp = Xp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @xp }
    end
  end

  # GET /xps/1/edit
  def edit
    @xp = Xp.find(params[:id])
  end

  # POST /xps
  # POST /xps.xml
  def create
    @xp = Xp.new(params[:xp])

    respond_to do |format|
      if @xp.save
        format.html { redirect_to(@xp, :notice => 'Xp was successfully created.') }
        format.xml  { render :xml => @xp, :status => :created, :location => @xp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @xp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /xps/1
  # PUT /xps/1.xml
  def update
    @xp = Xp.find(params[:id])

    respond_to do |format|
      if @xp.update_attributes(params[:xp])
        format.html { redirect_to(@xp, :notice => 'Xp was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @xp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /xps/1
  # DELETE /xps/1.xml
  def destroy
    @xp = Xp.find(params[:id])
    @xp.destroy

    respond_to do |format|
      format.html { redirect_to(xps_url) }
      format.xml  { head :ok }
    end
  end
end
