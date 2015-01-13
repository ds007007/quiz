class SessionsController < ApplicationController
	def create
    user = User.find_by(login: params["login"], password: params["password"])
    if user != nil
      session[:user_id] = user.id
      redirect_to root_path
    else
      session[:user_id] = nil
      redirect_to new_session_path, notice: "Неверная пара логин-пароль!"
    end
	end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
