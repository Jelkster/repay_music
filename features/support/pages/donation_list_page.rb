class DonationListPage
  include PageObject
  page_url "#{$page_config['base_url']}/donations/"

  table(:donations, id: 'donations')

  def has_donation?(donation)
    found_row = donations_element.find do |row|
      row[2].text == donation['Artist name'] && \
      row[9].text == donation['Amount']
    end
  end

end