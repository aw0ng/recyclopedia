class AddPasswordToDonor < ActiveRecord::Migration[6.1]
  def change
    add_column :donors, :password_digest, :string
  end
end
