class TracksController < ApplicationController
  before_filter :authenticate_user!, except: [:track_show_via_ajax_call, :show]

  def new
    bring_in_models
    @track = Track.new
  end

  def create
    bring_in_models
    @track = Track.create(track_params)
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def edit
    bring_in_models
    @track = Track.find(params[:id])
  end

  def update
    bring_in_models   
    @track = Track.find(params[:id])
    if @track.update_attributes(track_params)
      respond_to do |format|
       format.html { redirect_to root_path }
       format.json { render :json => @track }
      end
    else
      respond_to do |format|
        format.html { render :action  => :edit } # edit.html.erb
        format.json { render :nothing =>  true }
      end
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def index
    bring_in_models
    @tracks = Track.all
  end
  
  def show
    bring_in_models
    @track = Track.find(params[:id])
    render :show, flush: true
  end
  
  def track_show_via_ajax_call
    @track = Track.find(params[:id])
    render :json => @track
  end
  
  def send_object_via_ajax
    @track = Track.find(params[:id])
    render :json => @track
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_track
    @track = track.find(params[:id])
  end
  
  def track_params
    params.require(:track).permit(:track_id, :name, :url, :release_id, :duration)
  end
  
end