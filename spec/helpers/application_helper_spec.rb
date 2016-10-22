require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe '#amount' do
    it 'shows cents if present' do
      expect(helper.amount(6666.66)).to eq('6,666.66')
    end

    it 'does not show cents unless present' do
      expect(helper.amount(6666)).to eq('6,666')
    end
  end
end
