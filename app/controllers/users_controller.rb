class UsersController < ApplicationController
	#GET /users/new
	def new
		
	end

	# POST /users
	def create
		@user = User.find_by(login: params["login"])
	    if  @user == nil
	    	new_user = User.create(login: params["login"], password: params["password"])
	    	session[:user_id] = new_user.id
	    end
	end

	# PATCH/PUT /users/1
	def update
		
	end
end
