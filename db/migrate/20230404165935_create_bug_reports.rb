class CreateBugReports < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_reports do |t|
      t.integer :project_id
      t.integer :hacker_id
      t.string :title
      t.text :description
      t.string :severity_level
      t.string :status

      t.timestamps
    end
  end
end
