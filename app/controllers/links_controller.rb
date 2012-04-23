class LinksController < ApplicationController
  # GET /links
  def index
    @links = Link.all
  end

  # GET /links/1
  def show
    @link = Link.find(params[:id])
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
    @link = Link.find(params[:id])
  end

  # POST /links
  def create
    if current_user.blank? or current_user.id.blank?
      redirect_to links_path
      return
    end
    @link = Link.new(params[:link])
    @link.user_id = current_user.id
    @link.save
    redirect_to links_path
  end # def create

  # PUT /links/1
  def update
    if current_user.blank? or current_user.id.blank?
      redirect_to links_path
      return
    end
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      redirect_to links_path, notice: 'Link successfully updated.'
    else
      redirect_to links_path, notice: 'Website Malfunction, Link update failed. Its not your fault.'
    end
  end # def update

  # DELETE /links/1
  def destroy
    if current_user.blank? or current_user.id.blank?
      redirect_to links_path, notice: 'Website Malfunction, Link DELETE failed. Its not your fault.'
      return
    end
    @link = Link.find(params[:id])
    @link.destroy if @link.user_id == current_user.id
    redirect_to links_path, notice: 'That link... , should be GONE.'
  end # def destroy
end
