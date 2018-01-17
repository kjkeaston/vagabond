class CitiesController < ApplicationController

  def index
    @city = City.all
  end

  def show
    @city = City.find(params[:id])
    @post = Post.find_by(id: post_url)
    @current_user ||= User.find_by_id(session[:user_id])
  end

  private

  def city_params
    params.require(:city).permit(:name, :city_image)
  end

end
