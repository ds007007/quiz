class QuizController < ApplicationController
  include Extensions
  
  before_action :check_session, only: [:ask, :result]

  def welcome
  end

  def ask
  	#take all questions
  	@questions = Question.all
  end

  def result
    #извлекаем параметры
    @count = params[:questions].count
    @r = 0
    params[:questions].each do |question_id, answer_id|
      a = Question.find(question_id).answers.find(answer_id)
      if a.is_correct
        @r = @r + 1
      end
    end

    res_json = {
      'right' => @r,
      'count' => @count
    }
    render json: res_json.to_json #после этого контроллер продолжает выполняться

    #записываем результат
    res = Result.find_by(user_id: session[:user_id])
    if res
      Result.destroy(res)
    end
    res = Result.create(user_id: session[:user_id], result: @r*100/@count)
  end

  def stat
    @results = Result.order(result: :desc)
  end

end
