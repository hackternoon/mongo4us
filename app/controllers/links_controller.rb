class LinksController < ApplicationController

  # GET /links
  # GET /links.json
  def index
    @links = Link.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @link = Link.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/new
  # GET /links/new.json
  def new
    @link = Link.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/1/edit
  def edit
    if(current_user.blank? or current_user.id.blank?)
      redirect_to(root_path)
      return
    end
    @link = Link.find(params[:id])
  end

  # POST /links
  # POST /links.json
  def create
    if(current_user.blank? or current_user.id.blank?)
      redirect_to(root_path)
      return
    end

    @link = Link.new(params[:link])
    @link.user_id = current_user.id if current_user.present?

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /links/1
  # PUT /links/1.json
  def update
    if(current_user.blank? or current_user.id.blank?)
      redirect_to(root_path)
      return
    end

    @link = Link.find(params[:id])

    if(@link.user_id != current_user.id)
      redirect_to(root_path)
      return
    end

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link = Link.find(params[:id])

    if(@link.user_id != current_user.id)
      redirect_to(root_path)
      return
    end

    @link.destroy

    respond_to do |format|
      format.html { redirect_to links_url }
      format.json { head :no_content }
    end
  end
end
