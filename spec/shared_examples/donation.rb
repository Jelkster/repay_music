RSpec.shared_examples 'donations and requests' do
  it 'ensures first element is donation' do
    expect(@donations.first.request).to be(false)
  end

  it 'ensures second element is request' do
    expect(@donations.second.request).to be(true)
  end

  it 'returns 5 unique records' do
    expect(@donations.pluck(:id).uniq.size).to eq(5)
  end
end
