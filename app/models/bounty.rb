# == Schema Information
#
# Table name: bounties
#
#  id            :integer          not null, primary key
#  amount        :string
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  bug_report_id :integer
#  company_id    :integer
#
class Bounty < ApplicationRecord
  belongs_to(:company, { :required => true, :class_name => "Company", :foreign_key => "company_id" })
end
