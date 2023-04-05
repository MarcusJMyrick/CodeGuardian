# == Schema Information
#
# Table name: bug_reports
#
#  id             :integer          not null, primary key
#  description    :text
#  severity_level :string
#  status         :string
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  hacker_id      :integer
#  project_id     :integer
#
class BugReport < ApplicationRecord
  belongs_to(:hacker, { :required => true, :class_name => "User", :foreign_key => "hacker_id" })
  belongs_to(:project, { :required => true, :class_name => "Project", :foreign_key => "project_id" })
end
