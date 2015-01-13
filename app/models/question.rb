# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
    has_many :answers
    validates :content, presence: { is: true, message: "Вопрос не должен быть пустым" }
    validates :content, uniqueness: { is: true, message: "Вопрос должен быть уникальным" }
end
