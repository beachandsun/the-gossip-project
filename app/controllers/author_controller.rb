class AuthorController < ApplicationController
  def show
    @author = User.find(params[:id])
    @gossip = Gossip.find_by user_id: params[:id]
    @city = City.find(@author.city_id)
  end
end
