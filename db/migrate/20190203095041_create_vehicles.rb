class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :reg_no
      t.boolean :availability

      t.timestamps
    end
  end
end
