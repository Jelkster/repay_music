class Donation < ApplicationRecord
  belongs_to :artist

  validates :amount, numericality: { less_than: 1_000_000, allow_nil: true }

  class << self
    # ensures the following (for 2+ donations):
    #  - at least one donation if one exists
    #  - at least one request
    #  - first element is latest donation if one exists, latest request if none exist
    #  - second element is latest or 2nd latest request
    def present(donations)
      first_donation_index = donations.index { |d| d.request == false }
      if first_donation_index

        if first_donation_index.nonzero?
          donation = donations.delete_at(first_donation_index)
          donations.unshift(donation)
        end

        ensure_second_is_request(donations)
      else
        donation = order(id: :desc).find_by(request: false)
        if donation
          donations.pop
          donations.unshift(donation)
        end
      end
      donations
    end

    private

    def ensure_second_is_request(donations)
      unless donations.second.request
        first_request_index = donations.index { |d| d.request == true }

        request = if first_request_index.nil?
                    donations.pop
                    order(id: :desc).find_by(request: true)
                  else
                    donations.delete_at(first_request_index)
                  end

        donations.insert(1, request)
      end
    end
  end
end
