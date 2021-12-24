class AddImageToDonors < ActiveRecord::Migration[6.1]
  def change
    add_column :donors, :image, :string
  end
end
