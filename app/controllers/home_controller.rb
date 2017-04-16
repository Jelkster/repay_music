class HomeController < ApplicationController
  def index
    @donations = Donation.present Donation.order(id: :desc).first(5)

    # TODO: may not always be a donation available to present at top
  end

  def data
    render json: %w(rails vue javascript tooling)
  end

  def projects
    render json: { created: true }
    # render json: { name: ['the name is required'] }, status: :unprocessable_entity
  end
end
