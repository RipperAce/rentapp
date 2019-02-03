class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :owner_name
      t.string :address
      t.string :contact
      t.string :aadhar_no

      t.timestamps
    end
  end
end
