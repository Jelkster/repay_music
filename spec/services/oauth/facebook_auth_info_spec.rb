require 'rails_helper'
require 'shared_examples/auth_info'

RSpec.describe FacebookAuthInfo, type: :service do
  let(:auth) do
    double('auth', info: OpenStruct.new(
      first_name: 'Ryan',
      last_name: 'Jelks',
      email: 'ryan@repaymusic.com',
      image: 'http://graph.social.com/picture'
    ))
  end

  let(:service) { described_class.new(auth) }

  it_behaves_like 'auth info'
end
