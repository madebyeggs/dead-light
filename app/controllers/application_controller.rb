class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def bring_in_models
    @releases = Release.order("id DESC")
    @headline_release = Release.last
    @release = Release.first
    @next_release = Release.second
    @all_releases = Release.all
  end
  
end