class HelloworldsController < ApplicationController
  # GET /helloworlds
  # GET /helloworlds.json
  def index
    @helloworlds = Helloworld.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @helloworlds }
    end
  end

  # GET /helloworlds/1
  # GET /helloworlds/1.json
  def show
    @helloworld = Helloworld.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @helloworld }
    end
  end

  # GET /helloworlds/new
  # GET /helloworlds/new.json
  def new
    @helloworld = Helloworld.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @helloworld }
    end
  end

  # GET /helloworlds/1/edit
  def edit
    @helloworld = Helloworld.find(params[:id])
  end

  # POST /helloworlds
  # POST /helloworlds.json
  def create
    @helloworld = Helloworld.new(params[:helloworld])

    respond_to do |format|
      if @helloworld.save
        format.html { redirect_to @helloworld, notice: 'Helloworld was successfully created.' }
        format.json { render json: @helloworld, status: :created, location: @helloworld }
      else
        format.html { render action: "new" }
        format.json { render json: @helloworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /helloworlds/1
  # PUT /helloworlds/1.json
  def update
    @helloworld = Helloworld.find(params[:id])

    respond_to do |format|
      if @helloworld.update_attributes(params[:helloworld])
        format.html { redirect_to @helloworld, notice: 'Helloworld was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @helloworld.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helloworlds/1
  # DELETE /helloworlds/1.json
  def destroy
    @helloworld = Helloworld.find(params[:id])
    @helloworld.destroy

    respond_to do |format|
      format.html { redirect_to helloworlds_url }
      format.json { head :no_content }
    end
  end
end
