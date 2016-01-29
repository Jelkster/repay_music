require 'rails_helper'

RSpec.describe "donations/edit", type: :view do
  before(:each) do
    @donation = assign(:donation, Donation.create!(
      :request => false,
      :artist_id => 1,
      :artist_name => "MyString",
      :artist_website => "MyString",
      :artist_facebook => "MyString",
      :artist_twitter => "MyString",
      :artist_bandcamp => "MyString",
      :artist_instagram => "MyString",
      :artist_snapchat => "MyString",
      :amount => "9.99",
      :comment => "MyText",
      :youtube_video_id => "MyString",
      :youtube_error_code => 1
    ))
  end

  it "renders the edit donation form" do
    render
    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do
      assert_select "input#donation_request[name=?]", "donation[request]"
      assert_select "input#donation_artist_id[name=?]", "donation[artist_id]"
      assert_select "input#donation_artist_name[name=?]", "donation[artist_name]"
      assert_select "input#donation_artist_website[name=?]", "donation[artist_website]"
      assert_select "input#donation_artist_facebook[name=?]", "donation[artist_facebook]"
      assert_select "input#donation_artist_twitter[name=?]", "donation[artist_twitter]"
      assert_select "input#donation_artist_bandcamp[name=?]", "donation[artist_bandcamp]"
      assert_select "input#donation_artist_instagram[name=?]", "donation[artist_instagram]"
      assert_select "input#donation_artist_snapchat[name=?]", "donation[artist_snapchat]"
      assert_select "input#donation_amount[name=?]", "donation[amount]"
      assert_select "textarea#donation_comment[name=?]", "donation[comment]"
      assert_select "input#donation_youtube_video_id[name=?]", "donation[youtube_video_id]"
      assert_select "input#donation_youtube_error_code[name=?]", "donation[youtube_error_code]"
    end
  end
end
