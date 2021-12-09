class CreateDonors < ActiveRecord::Migration[6.1]
  def change
    create_table :donors do |t|
      t.string :email
      t.string :donor_name
      t.string :donor_surname

      t.timestamps
    end
  end
end
