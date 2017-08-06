require 'rails_helper'
require 'shared_examples/auth_info'

RSpec.describe TwitterAuthInfo, type: :service do
  let(:auth) do
    double('auth', info: OpenStruct.new(
      name: 'Ryan Lee Jelks',
      email: 'ryan@repaymusic.com',
      image: 'http://graph.social.com/picture'
    ))
  end

  let(:service) { described_class.new(auth) }

  it_behaves_like 'auth info'

  describe '#last_name' do
    it 'returns last name from oauth info' do
      expect(service.last_name).to eq('Lee Jelks')
    end
  end
end
