class GossipController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
    @author = User.all.find_by id: @gossip.user_id   
  end
end
