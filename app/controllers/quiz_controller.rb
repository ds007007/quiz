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
end
