# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  role            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  has_many(:user_profiles, { :class_name => "UserProfile", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:company_representatives, { :class_name => "CompanyRepresentative", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:received_messages, { :class_name => "Message", :foreign_key => "recipient_id", :dependent => :destroy })
  has_many(:sent_messages, { :class_name => "Message", :foreign_key => "sender_id", :dependent => :destroy })
  has_many(:bug_reports, { :class_name => "BugReport", :foreign_key => "hacker_id", :dependent => :destroy })
end
