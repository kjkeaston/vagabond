class CitiesController < ApplicationController
  # add before_action to authorize specific actions for specific users
  def index
    @city = City.all
    # name variables as singular or plural appropriately
    # this should be @cities because it is a list of cities
  end

  def show
    @city = City.find(params[:id])
    @post = Post.find_by(id: post_url) # use .find or .find_by consistently
    @current_user ||= User.find_by_id(session[:user_id]) # Why not just use the current_user method in your SessionsHelper
  end


  private

  def city_params
    params.require(:city).permit(:name, :city_image)
  end

end
