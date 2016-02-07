Given(/^I am viewing the new donation page$/) do
  visit(NewDonationPage)
end

When(/^I create the following donation requests:$/) do |donations|
  # table is a table.hashes.keys # => [:artist, :amount]
  donation = donations.hashes.first
    on(NewDonationPage) do |page|
      page.artist_name = donation['artist']
      page.amount = donation['amount']
      page.submit
    end
end

Then(/^I should see the following donation requests:$/) do |donations|
  # table is a table.hashes.keys # => [:artist, :amount]
  donation = donations.hashes.first
  on(DonationListPage).should have_donation(donation)
end

And(/^I am viewing the donation list page$/) do
  visit(DonationListPage)
end
