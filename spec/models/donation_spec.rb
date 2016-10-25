require 'rails_helper'
require 'shared_examples/donation'

RSpec.describe Donation, type: :model do
  describe 'validation' do
    it { should validate_numericality_of(:amount).allow_nil }
  end

  describe '.present' do
    context 'mix of donations and requests' do
      let(:last_5) do
        [
          Donation.new(id: 6, artist_name: 'artist_6', request: false),
          Donation.new(id: 5, artist_name: 'artist_5', request: false),
          Donation.new(id: 4, artist_name: 'artist_4', request: true),
          Donation.new(id: 3, artist_name: 'artist_3', request: true),
          Donation.new(id: 2, artist_name: 'artist_2', request: true)
        ]
      end

      context 'donation is first two elements' do
        before(:example) do
          @donations = Donation.present(last_5)
        end

        it_behaves_like 'donations and requests'

        it 'ensures first element is first donation' do
          expect(@donations.first.artist_name).to eq('artist_6')
        end

        it 'ensures second element is first request' do
          expect(@donations.second.artist_name).to eq('artist_4')
        end

        it 'retains order of remaining donations/requests' do
          expect(@donations.pluck(:id)).to eq([6, 4, 5, 3, 2])
        end
      end

      context 'donation not first element' do
        let(:last_5_not_first) do
          last_5.tap do |donations|
            donations.first.request = true   # artist_6
            donations.second.request = true  # artist_5
            donations.third.request = false  # artist_4
          end
        end

        before(:example) do
          @donations = Donation.present(last_5_not_first)
        end

        it_behaves_like 'donations and requests'

        it 'moves first donation to front of array' do
          expect(@donations.first.artist_name).to eq('artist_4')
        end

        it 'ensures second element is first request' do
          expect(@donations.second.artist_name).to eq('artist_6')
        end

        it 'retains order of remaining donations/requests' do
          expect(@donations.pluck(:id)).to eq([4, 6, 5, 3, 2])
        end
      end
    end

    context 'only requests' do
      let(:donation) { Donation.new(id: 1, artist_name: 'artist_1', request: false) }
      let(:donations) { double('Donations') }
      let(:last_5) do
        [
          Donation.new(id: 6, artist_name: 'artist_6', request: true),
          Donation.new(id: 5, artist_name: 'artist_5', request: true),
          Donation.new(id: 4, artist_name: 'artist_4', request: true),
          Donation.new(id: 3, artist_name: 'artist_3', request: true),
          Donation.new(id: 2, artist_name: 'artist_2', request: true)
        ]
      end

      before(:example) do
        expect(Donation).to receive(:order).and_return(donations)
        expect(donations).to receive(:find_by).with(request: false).and_return(donation)
        @donations = Donation.present(last_5)
      end

      it_behaves_like 'donations and requests'

      it 'adds donation to front of array' do
        expect(@donations.first.artist_name).to eq('artist_1')
      end

      it 'removes last request from array' do
        expect(@donations.last.artist_name).to eq('artist_3')
      end

      it 'retains order of requests' do
        expect(@donations.pluck(:id)).to eq([1, 6, 5, 4, 3])
      end
    end

    context 'only donations' do
      let(:request) { Donation.new(id: 1, artist_name: 'artist_1', request: true) }
      let(:donations) { double('Donations') }
      let(:last_5) do
        [
          Donation.new(id: 6, artist_name: 'artist_6', request: false),
          Donation.new(id: 5, artist_name: 'artist_5', request: false),
          Donation.new(id: 4, artist_name: 'artist_4', request: false),
          Donation.new(id: 3, artist_name: 'artist_3', request: false),
          Donation.new(id: 2, artist_name: 'artist_2', request: false)
        ]
      end

      before(:example) do
        expect(Donation).to receive(:order).and_return(donations)
        expect(donations).to receive(:find_by).with(request: true).and_return(request)
        @donations = Donation.present(last_5)
      end

      it_behaves_like 'donations and requests'

      it 'adds request to second position of array' do
        expect(@donations.second.artist_name).to eq('artist_1')
      end

      it 'removes last donation from array' do
        expect(@donations.last.artist_name).to eq('artist_3')
      end

      it 'retains order of donations' do
        expect(@donations.pluck(:id)).to eq([6, 1, 5, 4, 3])
      end
    end
  end
end
