class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: true
      t.references :passenger, null: false, foreign_key: true
      t.string :confirm

      t.timestamps
    end
  end
end
