class DroidsController < ApplicationController
  # GET /droids
  # GET /droids.xml
  def index
    @droids = Droid.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @droids }
      format.text  { render :text => @droids.sort_by(&:name).map(&:name).join(", ") }
    end
  end

  # GET /droids/1
  # GET /droids/1.xml
  def show
    @droid = Droid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @droid }
    end
  end

  # GET /droids/new
  # GET /droids/new.xml
  def new
    @droid = Droid.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @droid }
    end
  end

  # GET /droids/1/edit
  def edit
    @droid = Droid.find(params[:id])
  end

  # POST /droids
  # POST /droids.xml
  def create
    @droid = Droid.new(params[:droid])

    respond_to do |format|
      if @droid.save
        format.html { redirect_to(@droid, :notice => 'Droid was successfully created.') }
        format.xml  { render :xml => @droid, :status => :created, :location => @droid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @droid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /droids/1
  # PUT /droids/1.xml
  def update
    @droid = Droid.find(params[:id])

    respond_to do |format|
      if @droid.update_attributes(params[:droid])
        format.html { redirect_to(@droid, :notice => 'Droid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @droid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /droids/1
  # DELETE /droids/1.xml
  def destroy
    @droid = Droid.find(params[:id])
    @droid.destroy

    respond_to do |format|
      format.html { redirect_to(droids_url) }
      format.xml  { head :ok }
    end
  end
end
