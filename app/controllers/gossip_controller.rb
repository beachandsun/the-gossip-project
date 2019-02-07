class GossipController < ApplicationController
  
	attr_accessor :gossip

  def index
    @gossip = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
  	 @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new('user_id' => session[:user_id],
                     'title' => params[:title],
                     'content' => params[:content])
    @gossip.save
    if @gossip.save
      redirect_to gossip_index_path

    else
      render 'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
      @gossip = Gossip.find(params[:id])
      @gossip.title = params[:title]
      @gossip.content = params[:content]
      @gossip.save

    if @gossip.save
        redirect_to gossip_path(@gossip.id)
    else
      render 'edit_gossip_path'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossip_index_path
  end


end
