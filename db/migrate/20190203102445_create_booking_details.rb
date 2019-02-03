class CreateBookingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_details do |t|
      t.timestamps
      t.datetime :date_from
      t.datetime :date_to
      t.integer :rent_per_day
    end
  end
end
