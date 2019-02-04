class HomeController < ApplicationController
  def show
    @user = User.find_by first_name: params[:id]
    @gossip = Gossip.all
  end
end
