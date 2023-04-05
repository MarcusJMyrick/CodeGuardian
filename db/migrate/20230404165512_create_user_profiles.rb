class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.integer :user_id
      t.text :bio

      t.timestamps
    end
  end
end
