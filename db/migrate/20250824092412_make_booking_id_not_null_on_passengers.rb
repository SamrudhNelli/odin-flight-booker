class MakeBookingIdNotNullOnPassengers < ActiveRecord::Migration[8.0]
  def change
  change_column_null :passengers, :booking_id, false
  end
end
