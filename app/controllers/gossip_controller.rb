class GossipController < ApplicationController
  
	attr_accessor :post

  def show
    @gossip = Gossip.find(params[:id])
    @author = User.all.find_by id: @gossip.user_id   
  end

  def new
  create
  end

  def create
  @post = Gossip.new('user_id' => 12,
                   'title' => params[:title],
                   'content' => params[:content])
  @post.save
  if @post.save
    redirect_to home_path

  else
    render 'new'
    
  end
end
end
