class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :skill
      t.integer :user_profile_id

      t.timestamps
    end
  end
end
