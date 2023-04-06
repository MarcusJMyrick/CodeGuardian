# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  skill      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Skill < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
