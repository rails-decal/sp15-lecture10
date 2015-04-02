# == Schema Information
#
# Table name: quits
#
#  id         :integer          not null, primary key
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Quit < ActiveRecord::Base
end
