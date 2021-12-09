class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :quantity
      t.string :condition
      t.integer :category_id
      t.integer :donor_id

      t.timestamps
    end
  end
end
