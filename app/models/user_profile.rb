# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  bio        :text
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class UserProfile < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  has_many(:skills, { :class_name => "Skill", :foreign_key => "user_id", :dependent => :destroy })
  has_one_attached :image
end
