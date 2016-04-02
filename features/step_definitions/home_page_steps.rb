Given(/^I am viewing the home page$/) do
  visit HomePage
end

Then(/^I should be presented with music related to the last donation$/) do
  on HomePage do |page|
    page.jumbotron
  end
end
