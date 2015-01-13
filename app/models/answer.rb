# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  is_correct  :boolean          default(FALSE)
#  question_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
    belongs_to :question
	validates :content, presence: { is: true, message: "Ответ не должен быть пустым" }
end
