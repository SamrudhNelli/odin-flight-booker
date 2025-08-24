class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers
  accepts_nested_attributes_for :passengers
  validates :confirm, exclusion: { in: [ "0" ], message: "must be checked" }
end
