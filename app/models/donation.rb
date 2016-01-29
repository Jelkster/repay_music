class Donation < ApplicationRecord
  validates_numericality_of :amount, less_than: 1_000_000, allow_nil: true
end
