class ReleasesController < ApplicationController
  before_filter :authenticate_user!, except: [:release_show_via_ajax_call]

  def new
    @release = Release.new
  end

  def create
    @release = Release.create(release_params)
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def edit
    @release = Release.find(params[:id])
  end

  def update   
    @release = Release.find(params[:id])
    if @release.update_attributes(release_params)
      respond_to do |format|
       format.html { redirect_to root_path }
       format.json { render :json => @release }
      end
    else
      respond_to do |format|
        format.html { render :action  => :edit } # edit.html.erb
        format.json { render :nothing =>  true }
      end
    end
  end

  def destroy
    @release = Release.find(params[:id])
    @release.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def index
    @releases = Release.all
  end
  
  def show
    @release = Release.find(params[:id])
    render :show, flush: true
  end
  
  def release_show_via_ajax_call
    @release = Release.find(params[:id])
    render :json => @release
  end
  
  def send_object_via_ajax
    @release = Release.find(params[:id])
    render :json => @release
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_release
    @release = Release.find(params[:id])
  end
  
  def release_params
    params.require(:release).permit(:release_id, :artist, :title, :description, :packshot, :url, :review1, :review2)
  end
  
end