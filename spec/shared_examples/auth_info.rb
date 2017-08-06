RSpec.shared_examples 'auth info' do
  describe 'initialization' do
    it 'sets :auth attr' do
      expect(service.auth).to eq(auth)
    end
  end

  describe '#first_name' do
    it 'returns first name from oauth info' do
      expect(service.first_name).to eq('Ryan')
    end
  end

  describe '#last_name' do
    it 'returns last name from oauth info' do
      auth.info.name = 'Ryan Jelks'
      expect(service.last_name).to eq('Jelks')
    end
  end

  describe '#email' do
    it 'returns email from oauth info' do
      expect(service.email).to eq('ryan@repaymusic.com')
    end
  end

  describe '#image_url' do
    it 'returns image url from oauth info' do
      expect(service.image_url).to eq('http://graph.social.com/picture')
    end
  end
end
