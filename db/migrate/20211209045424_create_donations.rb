class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.integer :category_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
