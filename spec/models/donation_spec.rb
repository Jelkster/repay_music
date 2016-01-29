require 'rails_helper'

RSpec.describe Donation, type: :model do
  it { should validate_numericality_of(:amount).allow_nil }
end
