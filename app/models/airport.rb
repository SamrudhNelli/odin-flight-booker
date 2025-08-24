class Airport < ApplicationRecord
  validates :code, presence: true
  has_many :flights
  has_many :departing_flights, foreign_key: :depart_airport, class_name: :Flight
  has_many :arriving_flights, foreign_key: :arrival_airport, class_name: :Flight
end
