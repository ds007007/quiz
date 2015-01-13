module Extensions
  extend ActiveSupport::Concern

  private 

    def check_session
      if session[:user_id].nil?
        redirect_to new_user_path, notice: "Зарегистрируйтесь или войдите"
      end
    end
end