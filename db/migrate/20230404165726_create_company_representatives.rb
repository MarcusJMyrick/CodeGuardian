class CreateCompanyRepresentatives < ActiveRecord::Migration[6.0]
  def change
    create_table :company_representatives do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :name

      t.timestamps
    end
  end
end
