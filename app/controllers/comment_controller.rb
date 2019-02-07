class CommentController < ApplicationController

  def new
 	@comment = Comment.new
  end

  def create
  	 @comment = Comment.new('user_id' => session[:id],
            	'content' => params[:content],
            	'gossip' => params[:gossip])
     @comment.save
     if @comment.save
     	redirect_to gossip_path(@gossip.id)
     else
     	render 'new'
     end

 end

 def edit

 	@comment = Comment.find(params[:id])

 end 

 def update
 	@comment = Comment.find(params[:id])
 	@commment.content = params[:content]
 	@comment.save

 	if @comment.save
 		redirect_to gossip_path(@gossip.id)
 	else
 		render 'edit_gossip_path'
 	end
 end

 	def destroy

 		@comment = Comment.find(params[:id])
 		@comment.destroy
 		redirect_to gossip_path(@gossip.id)


 	end

 end
