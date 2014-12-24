class QuizController < ApplicationController
  def welcome
  end

  def ask
  	#take random question
  	question_ids = Question.ids
  	r = Random.rand(question_ids.count)
  	@question = Question.find(question_ids[r])

  end

  def result
  	@answer = Answer.find(params[:answer_id])
  end

  def signup
    @user = User.find_by(login: params["login"])
    if  @user == nil
      new_user = User.create(login: params["login"], password: params["password"])
      session[:user_id] = new_user.id
    end
  end

  def signin
    user = User.find_by(login: params["login"], password: params["password"])
    if user != nil
      session[:user_id] = user.id
    else
      session[:user_id] = nil
    end
  end

  def signout
    session[:user_id] = nil
  end
end
