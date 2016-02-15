Given(/^I am viewing the home page$/) do
  visit HomePage
end

Then(/^I should see a music video related to the last donation$/) do
  on HomePage do |page|
    page.youtube
  end
end
