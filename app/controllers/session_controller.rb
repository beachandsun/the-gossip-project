class SessionController < ApplicationController



  def new
  	@user = User.new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
  		session[:user_id] = @user.id
  		redirect_to gossip_index_path


  	else 
  		puts "q" * 90
		puts params[:password]
  		puts "q" * 90


  		render 'new'
  	end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to gossip_index_path
  end

end
