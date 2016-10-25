class HomeController < ApplicationController
  def index
    @donations = Donation.present Donation.order(id: :desc).first(5)

    # TODO: may not always be a donation available to present at top
  end
end
