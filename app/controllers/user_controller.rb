class UserController < ApplicationController

def new
	@user = User.new
end

def create
	@user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], description: params[:description], age: params[:age], city_id: 34, password: params[:password])
	@user.save

	if @user.save
		redirect_to gossip_index_path
	else
		render 'new'
	end

end

end
