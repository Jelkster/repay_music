require 'rails_helper'

RSpec.describe Donation, type: :model do
  describe 'validation' do
    it { should validate_numericality_of(:amount).allow_nil }
  end

  describe '.recent' do
    context 'only requests exist' do
      let!(:requests) do
        [
          Donation.create(artist_name: 'artist_0', request: true),
          Donation.create(artist_name: 'artist_1', request: true),
          Donation.create(artist_name: 'artist_2', request: true),
          Donation.create(artist_name: 'artist_3', request: true),
          Donation.create(artist_name: 'artist_4', request: true),
          Donation.create(artist_name: 'artist_5', request: true)
        ]
      end

      it 'returns the 5 most recent requests ordered by id: :desc' do
        expect(Donation.recent).to eq(requests[1..5].reverse)
      end
    end

    context 'mix of donations and requests' do
      let!(:donations_and_requests) do
        [
          Donation.create(artist_name: 'artist_0', request: false),
          Donation.create(artist_name: 'artist_1', request: true),
          Donation.create(artist_name: 'artist_2', request: true),
          Donation.create(artist_name: 'artist_3', request: true),
          Donation.create(artist_name: 'artist_4', request: true),
          Donation.create(artist_name: 'artist_5', request: true)
        ]
      end

      let(:sorted_donations_and_requests) do
        [
          donations_and_requests[0],
          donations_and_requests[5],
          donations_and_requests[4],
          donations_and_requests[3],
          donations_and_requests[2]
        ]
      end

      it 'ensures first element is a donation' do
        expect(Donation.recent).to eq(sorted_donations_and_requests)
      end
    end
  end
end
