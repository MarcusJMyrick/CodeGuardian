# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  website     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Company < ApplicationRecord
  has_many(:projects, { :class_name => "Project", :foreign_key => "company_id", :dependent => :destroy })
  has_many(:company_representatives, { :class_name => "CompanyRepresentative", :foreign_key => "company_id", :dependent => :destroy })
  has_many(:bounties, { :class_name => "Bounty", :foreign_key => "company_id", :dependent => :destroy })
end
