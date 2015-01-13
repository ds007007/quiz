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

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
