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
    @gossip = Gossip.new('user_id' => 12,
                     'title' => params[:title],
                     'content' => params[:content])
    @gossip.save
     puts "O" * 100
      puts "O" * 100
    if @gossip.save
       puts "O" * 100
      puts "O" * 100
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
      puts "O" * 100
      puts "O" * 100
    if @gossip.save
        puts "O" * 100
        redirect_to gossip_path(@gossip.id)
        puts "O" * 100
    else
      render 'edit'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to models_path
  end


end
