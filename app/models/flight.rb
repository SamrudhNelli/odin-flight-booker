class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: :Airport
  belongs_to :depart_airport, class_name: :Airport
  has_many :bookings
  validates :arrival_airport, :depart_airport, :arrives_at, :departs_at, :seats, presence: true
  attr_accessor :departs_at_month, :departs_at_day, :departs_at_year
  def print_flight_details
    "Flight from #{depart_airport.name} departing at #{departs_at} and arriving in #{arrival_airport.name} at #{arrives_at}\n\n"
  end
end
