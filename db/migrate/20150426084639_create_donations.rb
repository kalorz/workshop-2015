class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :donor_name
      t.integer :amount

      t.timestamps null: false
    end
  end
end
