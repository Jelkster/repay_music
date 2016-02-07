class NewDonationPage
  include PageObject
  page_url "#{$page_config['base_url']}/donations/new"

  text_field(:artist_name, id: 'donation_artist_name')
  text_field(:amount, id: 'donation_amount')
  button(:submit, type: 'submit')

end