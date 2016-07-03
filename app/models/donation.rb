class Donation < ApplicationRecord
  validates :amount, numericality: { less_than: 1_000_000, allow_nil: true }

  def self.recent
    donations = order(id: :desc).first(5)
    first_donation_index = donations.index { |d| d.request == false }

    if first_donation_index &.!= 0
      donation = donations.delete_at(first_donation_index)
      donations.unshift(donation)
    elsif first_donation_index.nil?
      donation = order(id: :desc).find_by(request: false)
      if donation
        donations.unshift(donation)
        donations.pop
      end
    end

    donations
  end
end
