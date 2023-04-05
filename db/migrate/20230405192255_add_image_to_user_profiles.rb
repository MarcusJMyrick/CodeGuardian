class AddImageToUserProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :image, :string
  end
end
