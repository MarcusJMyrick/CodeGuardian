class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :company_id
      t.string :name
      t.text :description
      t.string :repository_url

      t.timestamps
    end
  end
end
