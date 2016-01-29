require 'rails_helper'

RSpec.describe "donations/show", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :request => false,
      :artist_id => 1,
      :artist_name => "Artist Name",
      :artist_website => "Artist Website",
      :artist_facebook => "Artist Facebook",
      :artist_twitter => "Artist Twitter",
      :artist_bandcamp => "Artist Bandcamp",
      :artist_instagram => "Artist Instagram",
      :artist_snapchat => "Artist Snapchat",
      :amount => "9.99",
      :comment => "MyText",
      :youtube_video_id => "Youtube Video",
      :youtube_error_code => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Artist Name/)
    expect(rendered).to match(/Artist Website/)
    expect(rendered).to match(/Artist Facebook/)
    expect(rendered).to match(/Artist Twitter/)
    expect(rendered).to match(/Artist Bandcamp/)
    expect(rendered).to match(/Artist Instagram/)
    expect(rendered).to match(/Artist Snapchat/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Youtube Video/)
    expect(rendered).to match(/2/)
  end
end
