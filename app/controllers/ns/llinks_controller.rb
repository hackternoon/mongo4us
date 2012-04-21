class Ns::LlinksController < ApplicationController
  # GET /ns/llinks
  # GET /ns/llinks.json
  def index
    @ns_llinks = Ns::Llink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ns_llinks }
    end
  end

  # GET /ns/llinks/1
  # GET /ns/llinks/1.json
  def show
    @ns_llink = Ns::Llink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ns_llink }
    end
  end

  # GET /ns/llinks/new
  # GET /ns/llinks/new.json
  def new
    @ns_llink = Ns::Llink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ns_llink }
    end
  end

  # GET /ns/llinks/1/edit
  def edit
    @ns_llink = Ns::Llink.find(params[:id])
  end

  # POST /ns/llinks
  # POST /ns/llinks.json
  def create
    @ns_llink = Ns::Llink.new(params[:ns_llink])

    respond_to do |format|
      if @ns_llink.save
        format.html { redirect_to @ns_llink, notice: 'Llink was successfully created.' }
        format.json { render json: @ns_llink, status: :created, location: @ns_llink }
      else
        format.html { render action: "new" }
        format.json { render json: @ns_llink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ns/llinks/1
  # PUT /ns/llinks/1.json
  def update
    @ns_llink = Ns::Llink.find(params[:id])

    respond_to do |format|
      if @ns_llink.update_attributes(params[:ns_llink])
        format.html { redirect_to @ns_llink, notice: 'Llink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ns_llink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ns/llinks/1
  # DELETE /ns/llinks/1.json
  def destroy
    @ns_llink = Ns::Llink.find(params[:id])
    @ns_llink.destroy

    respond_to do |format|
      format.html { redirect_to ns_llinks_url }
      format.json { head :no_content }
    end
  end
end
