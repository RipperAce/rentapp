class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :address
      t.string :contact
      t.string :aadhar_no
      t.string :license

      t.timestamps
    end
  end
end
