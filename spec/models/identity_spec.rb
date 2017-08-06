require 'rails_helper'

RSpec.describe Identity, type: :model do
  describe 'validation' do
    it { should belong_to(:user) }
    it { should validate_presence_of(:uid) }
    it { should validate_presence_of(:provider) }
    it { should validate_uniqueness_of(:uid).scoped_to(:provider) }
  end

  describe '.find_for_oauth' do
    it 'finds identity record or creates one if does not exist' do
      auth = double('auth', uid: 1, provider: :facebook)
      expect(Identity).to receive(:find_or_create_by).with(uid: 1, provider: :facebook)
      Identity.find_for_oauth(auth)
    end
  end
end
