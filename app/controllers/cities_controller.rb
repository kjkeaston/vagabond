class CitiesController < ApplicationController

  def index
    @city = City.all
  end

  def show
    @city = City.find(find(params[:id]))
    @post = Post.find(find(params[:id]))
  end

end
