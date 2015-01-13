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
    @count = params[:questions].count
    @r = 0
    params[:questions].each do |question_id, answer_id|
      a = Question.find(question_id).answers.find(answer_id)
      if a.is_correct
        @r = @r + 1
      end
    end
  end

end
