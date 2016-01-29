FactoryGirl.define do
  factory :donation do
    request false
    artist_id 1
    artist_name "MyString"
    artist_website "MyString"
    artist_facebook "MyString"
    artist_twitter "MyString"
    artist_bandcamp "MyString"
    artist_instagram "MyString"
    artist_snapchat "MyString"
    amount "9.99"
    comment "MyText"
    youtube_video_id "MyString"
    youtube_error_code 1
  end
end
