class HomeController < ApplicationController
  def index
    @donations = Donation.recent
    # @donations = Donation.all.page(params[:page]).per(5)
  end
end
