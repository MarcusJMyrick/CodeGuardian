# == Schema Information
#
# Table name: projects
#
#  id             :integer          not null, primary key
#  description    :text
#  name           :string
#  repository_url :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  company_id     :integer
#
class Project < ApplicationRecord
  has_many(:bug_reports, { :class_name => "BugReport", :foreign_key => "project_id", :dependent => :destroy })
  belongs_to(:company, { :required => true, :class_name => "Company", :foreign_key => "company_id" })
end
