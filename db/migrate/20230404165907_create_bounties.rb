class CreateBounties < ActiveRecord::Migration[6.0]
  def change
    create_table :bounties do |t|
      t.integer :bug_report_id
      t.integer :company_id
      t.string :amount
      t.string :status

      t.timestamps
    end
  end
end
