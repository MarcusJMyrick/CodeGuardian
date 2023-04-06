class RenameUserProfileIdToUserIdInSkills < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :user_profile_id, :user_id
  end
end
