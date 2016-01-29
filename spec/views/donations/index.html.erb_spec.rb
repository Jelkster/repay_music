require 'rails_helper'

RSpec.describe "donations/index", type: :view do
  before(:each) do
    assign(:donations, [
      Donation.create!(
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
      ),
      Donation.create!(
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
      )
    ])
  end

  it "renders a list of donations" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Artist Name".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Website".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Bandcamp".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Instagram".to_s, :count => 2
    assert_select "tr>td", :text => "Artist Snapchat".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Youtube Video".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
