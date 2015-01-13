# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Result < ActiveRecord::Base
	belongs_to :user
end
