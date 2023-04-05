# == Schema Information
#
# Table name: skills
#
#  id              :integer          not null, primary key
#  skill           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_profile_id :integer
#
class Skill < ApplicationRecord
  belongs_to(:user_profile, { :required => true, :class_name => "UserProfile", :foreign_key => "user_profile_id" })
end
